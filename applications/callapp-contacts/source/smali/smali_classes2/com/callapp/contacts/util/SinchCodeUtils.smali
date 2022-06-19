.class public Lcom/callapp/contacts/util/SinchCodeUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/util/SinchCodeUtils$SinchCodeEvents;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/callapp/framework/phone/Phone;Lcom/callapp/contacts/util/SinchCodeUtils$SinchCodeEvents;)V
    .locals 3

    .line 31
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v0

    const-string v1, "Registration"

    const-string v2, "Requesting Sinch code from server"

    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/callapp/contacts/util/http/HttpUtils;->getCallappServerPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "sucg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 36
    new-instance v1, Lcom/callapp/contacts/util/http/HttpRequest;

    invoke-direct {v1, v0}, Lcom/callapp/contacts/util/http/HttpRequest;-><init>(Ljava/lang/String;)V

    .line 37
    invoke-virtual {p0}, Lcom/callapp/framework/phone/Phone;->a()Ljava/lang/String;

    move-result-object v0

    const-string v2, "myp"

    invoke-virtual {v1, v2, v0}, Lcom/callapp/contacts/util/http/HttpRequest;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/callapp/contacts/util/http/HttpRequest;

    .line 38
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/CallAppApplication;->getVersionCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "cvc"

    invoke-virtual {v1, v2, v0}, Lcom/callapp/contacts/util/http/HttpRequest;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/callapp/contacts/util/http/HttpRequest;

    const-string v0, "ispro"

    const-string v2, "1"

    .line 39
    invoke-virtual {v1, v0, v2}, Lcom/callapp/contacts/util/http/HttpRequest;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/callapp/contacts/util/http/HttpRequest;

    .line 40
    invoke-static {}, Lcom/callapp/contacts/util/Activities;->getClientVersion()Ljava/lang/String;

    move-result-object v0

    const-string v2, "cv"

    invoke-virtual {v1, v2, v0}, Lcom/callapp/contacts/util/http/HttpRequest;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/callapp/contacts/util/http/HttpRequest;

    .line 42
    new-instance v0, Lcom/callapp/contacts/util/SinchCodeUtils$1;

    invoke-direct {v0, p0, p1}, Lcom/callapp/contacts/util/SinchCodeUtils$1;-><init>(Lcom/callapp/framework/phone/Phone;Lcom/callapp/contacts/util/SinchCodeUtils$SinchCodeEvents;)V

    .line 1141
    iput-object v0, v1, Lcom/callapp/contacts/util/http/HttpRequest;->a:Lcom/callapp/contacts/event/listener/Listener;

    .line 78
    new-instance p0, Lcom/callapp/contacts/util/SinchCodeUtils$2;

    invoke-direct {p0, p1}, Lcom/callapp/contacts/util/SinchCodeUtils$2;-><init>(Lcom/callapp/contacts/util/SinchCodeUtils$SinchCodeEvents;)V

    .line 1146
    iput-object p0, v1, Lcom/callapp/contacts/util/http/HttpRequest;->b:Lcom/callapp/contacts/event/listener/Listener;

    .line 90
    invoke-virtual {v1}, Lcom/callapp/contacts/util/http/HttpRequest;->a()Lcom/callapp/contacts/util/http/HttpRequest;

    return-void
.end method

.class Lcom/pubmatic/sdk/webrendering/mraid/h;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/pubmatic/sdk/webrendering/mraid/g;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;Lcom/pubmatic/sdk/webrendering/mraid/o;Z)Lcom/pubmatic/sdk/common/POBError;
    .locals 2

    const-string v0, "params"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-nez p1, :cond_0

    new-instance p1, Lcom/pubmatic/sdk/common/POBError;

    const/16 p2, 0x3f1

    const-string p3, "Invalid MRAID command for expand() event"

    invoke-direct {p1, p2, p3}, Lcom/pubmatic/sdk/common/POBError;-><init>(ILjava/lang/String;)V

    return-object p1

    :cond_0
    const-string v0, "url"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1, p3}, Lcom/pubmatic/sdk/webrendering/mraid/o;->e(Ljava/lang/String;Z)V

    return-object v1
.end method

.method public a()Ljava/lang/String;
    .locals 1

    const-string v0, "expand"

    return-object v0
.end method

.method public b()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.class Lcom/pubmatic/sdk/webrendering/mraid/s;
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
    .locals 3

    const-string v0, "params"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const/16 v0, 0x3f1

    if-nez p1, :cond_0

    new-instance p1, Lcom/pubmatic/sdk/common/POBError;

    const-string p2, "Invalid MRAID command for playVideo event"

    invoke-direct {p1, v0, p2}, Lcom/pubmatic/sdk/common/POBError;-><init>(ILjava/lang/String;)V

    return-object p1

    :cond_0
    const-string v1, "url"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-interface {p2, p1, p3}, Lcom/pubmatic/sdk/webrendering/mraid/o;->d(Ljava/lang/String;Z)V

    return-object v2

    :cond_1
    new-instance p1, Lcom/pubmatic/sdk/common/POBError;

    const-string p2, "Invalid MRAID Url for playVideo event"

    invoke-direct {p1, v0, p2}, Lcom/pubmatic/sdk/common/POBError;-><init>(ILjava/lang/String;)V

    return-object p1
.end method

.method public a()Ljava/lang/String;
    .locals 1

    const-string v0, "playVideo"

    return-object v0
.end method

.method public b()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

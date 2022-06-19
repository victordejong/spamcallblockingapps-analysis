.class Lcom/pubmatic/sdk/webrendering/mraid/n$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pubmatic/sdk/webrendering/mraid/n;->nativeCall(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/pubmatic/sdk/webrendering/mraid/n;


# direct methods
.method constructor <init>(Lcom/pubmatic/sdk/webrendering/mraid/n;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/pubmatic/sdk/webrendering/mraid/n$a;->b:Lcom/pubmatic/sdk/webrendering/mraid/n;

    iput-object p2, p0, Lcom/pubmatic/sdk/webrendering/mraid/n$a;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/pubmatic/sdk/webrendering/mraid/n$a;->b:Lcom/pubmatic/sdk/webrendering/mraid/n;

    invoke-static {v0}, Lcom/pubmatic/sdk/webrendering/mraid/n;->a(Lcom/pubmatic/sdk/webrendering/mraid/n;)V

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/pubmatic/sdk/webrendering/mraid/n$a;->a:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "PMMraidBridge"

    const-string v4, "Received MRAID event : %s"

    invoke-static {v2, v4, v1}, Lcom/pubmatic/sdk/common/log/PMLog;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    iget-object v4, p0, Lcom/pubmatic/sdk/webrendering/mraid/n$a;->a:Ljava/lang/String;

    invoke-direct {v1, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/pubmatic/sdk/webrendering/mraid/n$a;->b:Lcom/pubmatic/sdk/webrendering/mraid/n;

    invoke-static {v4, v1}, Lcom/pubmatic/sdk/webrendering/mraid/n;->a(Lcom/pubmatic/sdk/webrendering/mraid/n;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {v1}, Lorg/json/JSONException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    const-string v1, "Failed to parse MRAID event. Error : %s"

    invoke-static {v2, v1, v0}, Lcom/pubmatic/sdk/common/log/PMLog;->error(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/pubmatic/sdk/webrendering/mraid/n$a;->b:Lcom/pubmatic/sdk/webrendering/mraid/n;

    iget-object v1, p0, Lcom/pubmatic/sdk/webrendering/mraid/n$a;->a:Ljava/lang/String;

    const-string v2, "Not supported"

    invoke-virtual {v0, v2, v1}, Lcom/pubmatic/sdk/webrendering/mraid/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

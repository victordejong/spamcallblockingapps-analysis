.class Lcom/pubmatic/sdk/monitor/POBMonitor$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/pubmatic/sdk/common/log/PMLog$PMLogging;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pubmatic/sdk/monitor/POBMonitor;->logger()Lcom/pubmatic/sdk/common/log/PMLog$PMLogging;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/pubmatic/sdk/monitor/POBMonitor;


# direct methods
.method constructor <init>(Lcom/pubmatic/sdk/monitor/POBMonitor;)V
    .locals 0

    iput-object p1, p0, Lcom/pubmatic/sdk/monitor/POBMonitor$a;->a:Lcom/pubmatic/sdk/monitor/POBMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public log(Lcom/pubmatic/sdk/common/log/PMLog$PMLogMessage;)V
    .locals 4

    const-string v0, "Not able to push data to js."

    const-string v1, "POBMonitor"

    invoke-static {p1}, Lcom/pubmatic/sdk/monitor/POBMonitor;->access$400(Lcom/pubmatic/sdk/common/log/PMLog$PMLogMessage;)Lorg/json/JSONObject;

    move-result-object p1

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v2, p1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v3, "data"

    invoke-virtual {p1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    move-result v2

    if-lez v2, :cond_0

    iget-object v0, p0, Lcom/pubmatic/sdk/monitor/POBMonitor$a;->a:Lcom/pubmatic/sdk/monitor/POBMonitor;

    invoke-static {v0}, Lcom/pubmatic/sdk/monitor/POBMonitor;->access$500(Lcom/pubmatic/sdk/monitor/POBMonitor;)Lcom/pubmatic/sdk/monitor/POBMonitorWebView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/pubmatic/sdk/monitor/POBMonitorWebView;->appendData(Lorg/json/JSONObject;)V

    goto :goto_1

    :cond_0
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

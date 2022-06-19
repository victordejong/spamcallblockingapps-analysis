.class Lcom/telguarder/helpers/backend/JsonRequest$1;
.super Ljava/lang/Object;
.source "JsonRequest.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/telguarder/helpers/backend/JsonRequest;->trackDelayByRegionRedirections(ZLjava/lang/String;Ljava/lang/Long;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/telguarder/helpers/backend/JsonRequest;

.field final synthetic val$delay:Ljava/lang/Long;

.field final synthetic val$measuredOnServer:Z

.field final synthetic val$region:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/telguarder/helpers/backend/JsonRequest;ZLjava/lang/String;Ljava/lang/Long;)V
    .locals 0

    .line 201
    iput-object p1, p0, Lcom/telguarder/helpers/backend/JsonRequest$1;->this$0:Lcom/telguarder/helpers/backend/JsonRequest;

    iput-boolean p2, p0, Lcom/telguarder/helpers/backend/JsonRequest$1;->val$measuredOnServer:Z

    iput-object p3, p0, Lcom/telguarder/helpers/backend/JsonRequest$1;->val$region:Ljava/lang/String;

    iput-object p4, p0, Lcom/telguarder/helpers/backend/JsonRequest$1;->val$delay:Ljava/lang/Long;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    const-string v0, ""

    .line 205
    :try_start_0
    iget-object v1, p0, Lcom/telguarder/helpers/backend/JsonRequest$1;->this$0:Lcom/telguarder/helpers/backend/JsonRequest;

    invoke-virtual {v1}, Lcom/telguarder/helpers/backend/JsonRequest;->getUrl()Ljava/lang/String;

    move-result-object v1

    const-string v2, "https://api.advista.no/"

    .line 206
    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "https://tgedgeapi.telguarder.com/"

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 207
    invoke-static {}, Lcom/telguarder/ApplicationObject;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/telguarder/helpers/backend/NetworkHelper;->getNetworkClass(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    .line 208
    iget-boolean v0, p0, Lcom/telguarder/helpers/backend/JsonRequest$1;->val$measuredOnServer:Z

    if-eqz v0, :cond_0

    .line 209
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object v3

    iget-object v0, p0, Lcom/telguarder/helpers/backend/JsonRequest$1;->this$0:Lcom/telguarder/helpers/backend/JsonRequest;

    invoke-static {v0}, Lcom/telguarder/helpers/backend/JsonRequest;->access$000(Lcom/telguarder/helpers/backend/JsonRequest;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/telguarder/helpers/backend/JsonRequest$1;->val$region:Ljava/lang/String;

    iget-object v7, p0, Lcom/telguarder/helpers/backend/JsonRequest$1;->val$delay:Ljava/lang/Long;

    invoke-virtual/range {v3 .. v8}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendBackendResponseRegionXAction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;)V

    goto :goto_0

    .line 211
    :cond_0
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object v3

    iget-object v0, p0, Lcom/telguarder/helpers/backend/JsonRequest$1;->this$0:Lcom/telguarder/helpers/backend/JsonRequest;

    invoke-static {v0}, Lcom/telguarder/helpers/backend/JsonRequest;->access$000(Lcom/telguarder/helpers/backend/JsonRequest;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/telguarder/helpers/backend/JsonRequest$1;->val$region:Ljava/lang/String;

    iget-object v7, p0, Lcom/telguarder/helpers/backend/JsonRequest$1;->val$delay:Ljava/lang/Long;

    invoke-virtual/range {v3 .. v8}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendBackendResponseRegionAction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    return-void
.end method

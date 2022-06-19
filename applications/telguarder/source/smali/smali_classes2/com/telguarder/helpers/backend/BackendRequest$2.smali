.class Lcom/telguarder/helpers/backend/BackendRequest$2;
.super Ljava/lang/Object;
.source "BackendRequest.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/telguarder/helpers/backend/BackendRequest;->executeRequest(Ljava/lang/Class;Ljava/lang/reflect/Type;Lcom/telguarder/helpers/backend/BackendCallbackListener;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/telguarder/helpers/backend/BackendRequest;

.field final synthetic val$callbackListener:Lcom/telguarder/helpers/backend/BackendCallbackListener;

.field final synthetic val$nakedUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/telguarder/helpers/backend/BackendRequest;Ljava/lang/String;Lcom/telguarder/helpers/backend/BackendCallbackListener;)V
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/telguarder/helpers/backend/BackendRequest$2;->this$0:Lcom/telguarder/helpers/backend/BackendRequest;

    iput-object p2, p0, Lcom/telguarder/helpers/backend/BackendRequest$2;->val$nakedUrl:Ljava/lang/String;

    iput-object p3, p0, Lcom/telguarder/helpers/backend/BackendRequest$2;->val$callbackListener:Lcom/telguarder/helpers/backend/BackendCallbackListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 9

    const-string v0, "telguarder.backend"

    if-nez p1, :cond_0

    .line 120
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object p1

    iget-object v1, p0, Lcom/telguarder/helpers/backend/BackendRequest$2;->val$nakedUrl:Ljava/lang/String;

    iget-object v2, p0, Lcom/telguarder/helpers/backend/BackendRequest$2;->this$0:Lcom/telguarder/helpers/backend/BackendRequest;

    invoke-static {v2}, Lcom/telguarder/helpers/backend/BackendRequest;->access$000(Lcom/telguarder/helpers/backend/BackendRequest;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "unknown_error"

    invoke-virtual {p1, v1, v2, v3}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendBackendErrorResponseAction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/telguarder/helpers/backend/BackendRequest$2;->this$0:Lcom/telguarder/helpers/backend/BackendRequest;

    invoke-static {v1}, Lcom/telguarder/helpers/backend/BackendRequest;->access$100(Lcom/telguarder/helpers/backend/BackendRequest;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " request failed "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/telguarder/helpers/log/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    iget-object p1, p0, Lcom/telguarder/helpers/backend/BackendRequest$2;->val$callbackListener:Lcom/telguarder/helpers/backend/BackendCallbackListener;

    if-eqz p1, :cond_2

    .line 123
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/telguarder/helpers/backend/BackendCallbackListener;->triggerError(Ljava/lang/Exception;)V

    goto/16 :goto_1

    .line 126
    :cond_0
    iget-object v1, p1, Lcom/android/volley/VolleyError;->networkResponse:Lcom/android/volley/NetworkResponse;

    if-eqz v1, :cond_1

    iget-object v1, p1, Lcom/android/volley/VolleyError;->networkResponse:Lcom/android/volley/NetworkResponse;

    iget v1, v1, Lcom/android/volley/NetworkResponse;->statusCode:I

    if-eqz v1, :cond_1

    .line 127
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object v1

    iget-object v2, p0, Lcom/telguarder/helpers/backend/BackendRequest$2;->val$nakedUrl:Ljava/lang/String;

    iget-object v3, p0, Lcom/telguarder/helpers/backend/BackendRequest$2;->this$0:Lcom/telguarder/helpers/backend/BackendRequest;

    invoke-static {v3}, Lcom/telguarder/helpers/backend/BackendRequest;->access$000(Lcom/telguarder/helpers/backend/BackendRequest;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p1, Lcom/android/volley/VolleyError;->networkResponse:Lcom/android/volley/NetworkResponse;

    iget v4, v4, Lcom/android/volley/NetworkResponse;->statusCode:I

    invoke-virtual {v1, v2, v3, v4}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendBackendErrorResponseAction(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 129
    :cond_1
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object v1

    iget-object v2, p0, Lcom/telguarder/helpers/backend/BackendRequest$2;->val$nakedUrl:Ljava/lang/String;

    iget-object v3, p0, Lcom/telguarder/helpers/backend/BackendRequest$2;->this$0:Lcom/telguarder/helpers/backend/BackendRequest;

    invoke-static {v3}, Lcom/telguarder/helpers/backend/BackendRequest;->access$000(Lcom/telguarder/helpers/backend/BackendRequest;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/telguarder/helpers/backend/BackendRequest$2;->this$0:Lcom/telguarder/helpers/backend/BackendRequest;

    invoke-static {v4, p1}, Lcom/telguarder/helpers/backend/BackendRequest;->access$200(Lcom/telguarder/helpers/backend/BackendRequest;Lcom/android/volley/VolleyError;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendBackendErrorResponseAction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/telguarder/helpers/backend/BackendRequest$2;->this$0:Lcom/telguarder/helpers/backend/BackendRequest;

    invoke-static {v2}, Lcom/telguarder/helpers/backend/BackendRequest;->access$100(Lcom/telguarder/helpers/backend/BackendRequest;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " request failed with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/volley/VolleyError;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/telguarder/helpers/log/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    iget-object v0, p0, Lcom/telguarder/helpers/backend/BackendRequest$2;->val$callbackListener:Lcom/telguarder/helpers/backend/BackendCallbackListener;

    if-eqz v0, :cond_2

    .line 133
    new-instance v8, Lcom/telguarder/helpers/errorhandling/NetworkError;

    iget-object v1, p0, Lcom/telguarder/helpers/backend/BackendRequest$2;->this$0:Lcom/telguarder/helpers/backend/BackendRequest;

    invoke-static {v1}, Lcom/telguarder/helpers/backend/BackendRequest;->access$100(Lcom/telguarder/helpers/backend/BackendRequest;)Ljava/lang/String;

    move-result-object v3

    iget-object v1, p0, Lcom/telguarder/helpers/backend/BackendRequest$2;->this$0:Lcom/telguarder/helpers/backend/BackendRequest;

    invoke-static {v1}, Lcom/telguarder/helpers/backend/BackendRequest;->access$300(Lcom/telguarder/helpers/backend/BackendRequest;)Ljava/util/Map;

    move-result-object v4

    iget-object v1, p0, Lcom/telguarder/helpers/backend/BackendRequest$2;->this$0:Lcom/telguarder/helpers/backend/BackendRequest;

    invoke-static {v1}, Lcom/telguarder/helpers/backend/BackendRequest;->access$400(Lcom/telguarder/helpers/backend/BackendRequest;)Ljava/lang/String;

    move-result-object v5

    iget-object v1, p0, Lcom/telguarder/helpers/backend/BackendRequest$2;->this$0:Lcom/telguarder/helpers/backend/BackendRequest;

    invoke-static {v1}, Lcom/telguarder/helpers/backend/BackendRequest;->access$500(Lcom/telguarder/helpers/backend/BackendRequest;)Ljava/util/Map;

    move-result-object v6

    iget-object v1, p0, Lcom/telguarder/helpers/backend/BackendRequest$2;->this$0:Lcom/telguarder/helpers/backend/BackendRequest;

    invoke-static {v1}, Lcom/telguarder/helpers/backend/BackendRequest;->access$600(Lcom/telguarder/helpers/backend/BackendRequest;)Lcom/telguarder/helpers/backend/BackendRequest$Method;

    move-result-object v7

    move-object v1, v8

    move-object v2, p1

    invoke-direct/range {v1 .. v7}, Lcom/telguarder/helpers/errorhandling/NetworkError;-><init>(Lcom/android/volley/VolleyError;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/util/Map;Lcom/telguarder/helpers/backend/BackendRequest$Method;)V

    invoke-virtual {v0, v8}, Lcom/telguarder/helpers/backend/BackendCallbackListener;->triggerError(Ljava/lang/Exception;)V

    :cond_2
    :goto_1
    return-void
.end method

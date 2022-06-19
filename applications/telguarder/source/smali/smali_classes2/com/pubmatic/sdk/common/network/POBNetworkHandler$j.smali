.class Lcom/pubmatic/sdk/common/network/POBNetworkHandler$j;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pubmatic/sdk/common/network/POBNetworkHandler;->b(Lcom/pubmatic/sdk/common/network/POBHttpRequest;Lcom/pubmatic/sdk/common/network/POBNetworkHandler$POBNetworkListener;Lcom/pubmatic/sdk/common/network/POBNetworkHandler$k;Lcom/pubmatic/sdk/common/network/POBNetworkHandler$POBNetworkResultListener;)Lcom/android/volley/Response$ErrorListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/pubmatic/sdk/common/network/POBNetworkHandler$POBNetworkResultListener;

.field final synthetic b:Lcom/pubmatic/sdk/common/network/POBHttpRequest;

.field final synthetic c:Lcom/pubmatic/sdk/common/network/POBNetworkHandler$k;

.field final synthetic d:Lcom/pubmatic/sdk/common/network/POBNetworkHandler$POBNetworkListener;

.field final synthetic e:Lcom/pubmatic/sdk/common/network/POBNetworkHandler;


# direct methods
.method constructor <init>(Lcom/pubmatic/sdk/common/network/POBNetworkHandler;Lcom/pubmatic/sdk/common/network/POBNetworkHandler$POBNetworkResultListener;Lcom/pubmatic/sdk/common/network/POBHttpRequest;Lcom/pubmatic/sdk/common/network/POBNetworkHandler$k;Lcom/pubmatic/sdk/common/network/POBNetworkHandler$POBNetworkListener;)V
    .locals 0

    iput-object p1, p0, Lcom/pubmatic/sdk/common/network/POBNetworkHandler$j;->e:Lcom/pubmatic/sdk/common/network/POBNetworkHandler;

    iput-object p2, p0, Lcom/pubmatic/sdk/common/network/POBNetworkHandler$j;->a:Lcom/pubmatic/sdk/common/network/POBNetworkHandler$POBNetworkResultListener;

    iput-object p3, p0, Lcom/pubmatic/sdk/common/network/POBNetworkHandler$j;->b:Lcom/pubmatic/sdk/common/network/POBHttpRequest;

    iput-object p4, p0, Lcom/pubmatic/sdk/common/network/POBNetworkHandler$j;->c:Lcom/pubmatic/sdk/common/network/POBNetworkHandler$k;

    iput-object p5, p0, Lcom/pubmatic/sdk/common/network/POBNetworkHandler$j;->d:Lcom/pubmatic/sdk/common/network/POBNetworkHandler$POBNetworkListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 6

    iget-object v0, p0, Lcom/pubmatic/sdk/common/network/POBNetworkHandler$j;->a:Lcom/pubmatic/sdk/common/network/POBNetworkHandler$POBNetworkResultListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/pubmatic/sdk/common/network/POBNetworkHandler$j;->e:Lcom/pubmatic/sdk/common/network/POBNetworkHandler;

    iget-object v1, p0, Lcom/pubmatic/sdk/common/network/POBNetworkHandler$j;->b:Lcom/pubmatic/sdk/common/network/POBHttpRequest;

    invoke-static {v0, p1, v1}, Lcom/pubmatic/sdk/common/network/POBNetworkHandler;->a(Lcom/pubmatic/sdk/common/network/POBNetworkHandler;Lcom/android/volley/VolleyError;Lcom/pubmatic/sdk/common/network/POBHttpRequest;)Lcom/android/volley/NetworkResponse;

    move-result-object v0

    iget-object v1, p0, Lcom/pubmatic/sdk/common/network/POBNetworkHandler$j;->a:Lcom/pubmatic/sdk/common/network/POBNetworkHandler$POBNetworkResultListener;

    new-instance v2, Lcom/pubmatic/sdk/common/network/POBNetworkResult;

    iget-object v3, v0, Lcom/android/volley/NetworkResponse;->headers:Ljava/util/Map;

    iget-wide v4, v0, Lcom/android/volley/NetworkResponse;->networkTimeMs:J

    invoke-direct {v2, v3, v4, v5}, Lcom/pubmatic/sdk/common/network/POBNetworkResult;-><init>(Ljava/util/Map;J)V

    invoke-interface {v1, v2}, Lcom/pubmatic/sdk/common/network/POBNetworkHandler$POBNetworkResultListener;->onResult(Lcom/pubmatic/sdk/common/network/POBNetworkResult;)V

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/pubmatic/sdk/common/network/POBNetworkHandler$j;->e:Lcom/pubmatic/sdk/common/network/POBNetworkHandler;

    iget-object v1, p0, Lcom/pubmatic/sdk/common/network/POBNetworkHandler$j;->b:Lcom/pubmatic/sdk/common/network/POBHttpRequest;

    iget-object v2, p0, Lcom/pubmatic/sdk/common/network/POBNetworkHandler$j;->c:Lcom/pubmatic/sdk/common/network/POBNetworkHandler$k;

    invoke-static {v0, p1, v1, v2}, Lcom/pubmatic/sdk/common/network/POBNetworkHandler;->a(Lcom/pubmatic/sdk/common/network/POBNetworkHandler;Lcom/android/volley/VolleyError;Lcom/pubmatic/sdk/common/network/POBHttpRequest;Lcom/pubmatic/sdk/common/network/POBNetworkHandler$k;)Lcom/pubmatic/sdk/common/network/POBHttpRequest;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/pubmatic/sdk/common/network/POBNetworkHandler$j;->e:Lcom/pubmatic/sdk/common/network/POBNetworkHandler;

    iget-object v1, p0, Lcom/pubmatic/sdk/common/network/POBNetworkHandler$j;->d:Lcom/pubmatic/sdk/common/network/POBNetworkHandler$POBNetworkListener;

    invoke-virtual {p1, v0, v1}, Lcom/pubmatic/sdk/common/network/POBNetworkHandler;->sendJSONRequest(Lcom/pubmatic/sdk/common/network/POBHttpRequest;Lcom/pubmatic/sdk/common/network/POBNetworkHandler$POBNetworkListener;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/pubmatic/sdk/common/network/POBNetworkHandler$j;->d:Lcom/pubmatic/sdk/common/network/POBNetworkHandler$POBNetworkListener;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/pubmatic/sdk/common/network/POBNetworkHandler$j;->e:Lcom/pubmatic/sdk/common/network/POBNetworkHandler;

    invoke-static {v1, p1}, Lcom/pubmatic/sdk/common/network/POBNetworkHandler;->a(Lcom/pubmatic/sdk/common/network/POBNetworkHandler;Lcom/android/volley/VolleyError;)Lcom/pubmatic/sdk/common/POBError;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/pubmatic/sdk/common/network/POBNetworkHandler$POBNetworkListener;->onFailure(Lcom/pubmatic/sdk/common/POBError;)V
    :try_end_0
    .catch Lcom/android/volley/VolleyError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    iget-object v0, p0, Lcom/pubmatic/sdk/common/network/POBNetworkHandler$j;->d:Lcom/pubmatic/sdk/common/network/POBNetworkHandler$POBNetworkListener;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/pubmatic/sdk/common/network/POBNetworkHandler$j;->e:Lcom/pubmatic/sdk/common/network/POBNetworkHandler;

    invoke-static {v1, p1}, Lcom/pubmatic/sdk/common/network/POBNetworkHandler;->a(Lcom/pubmatic/sdk/common/network/POBNetworkHandler;Lcom/android/volley/VolleyError;)Lcom/pubmatic/sdk/common/POBError;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/pubmatic/sdk/common/network/POBNetworkHandler$POBNetworkListener;->onFailure(Lcom/pubmatic/sdk/common/POBError;)V

    :cond_2
    :goto_0
    return-void
.end method

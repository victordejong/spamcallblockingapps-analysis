.class final Lnet/pubnative/lite/sdk/network/PNHttpClient$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/pubnative/lite/sdk/network/PNHttpClient;->makeRequest(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;ZZLnet/pubnative/lite/sdk/network/PNHttpClient$Listener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$headers:Ljava/util/Map;

.field final synthetic val$listener:Lnet/pubnative/lite/sdk/network/PNHttpClient$Listener;

.field final synthetic val$postBody:Ljava/lang/String;

.field final synthetic val$shouldRetryIfFail:Z

.field final synthetic val$shouldReturnOnMainThread:Z

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;ZZLnet/pubnative/lite/sdk/network/PNHttpClient$Listener;Landroid/content/Context;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lnet/pubnative/lite/sdk/network/PNHttpClient$1;->val$url:Ljava/lang/String;

    iput-object p2, p0, Lnet/pubnative/lite/sdk/network/PNHttpClient$1;->val$headers:Ljava/util/Map;

    iput-object p3, p0, Lnet/pubnative/lite/sdk/network/PNHttpClient$1;->val$postBody:Ljava/lang/String;

    iput-boolean p4, p0, Lnet/pubnative/lite/sdk/network/PNHttpClient$1;->val$shouldRetryIfFail:Z

    iput-boolean p5, p0, Lnet/pubnative/lite/sdk/network/PNHttpClient$1;->val$shouldReturnOnMainThread:Z

    iput-object p6, p0, Lnet/pubnative/lite/sdk/network/PNHttpClient$1;->val$listener:Lnet/pubnative/lite/sdk/network/PNHttpClient$Listener;

    iput-object p7, p0, Lnet/pubnative/lite/sdk/network/PNHttpClient$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 118
    iget-object v0, p0, Lnet/pubnative/lite/sdk/network/PNHttpClient$1;->val$url:Ljava/lang/String;

    iget-object v1, p0, Lnet/pubnative/lite/sdk/network/PNHttpClient$1;->val$headers:Ljava/util/Map;

    iget-object v2, p0, Lnet/pubnative/lite/sdk/network/PNHttpClient$1;->val$postBody:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lnet/pubnative/lite/sdk/network/PNHttpClient;->access$000(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Lnet/pubnative/lite/sdk/network/PNHttpClient$Response;

    move-result-object v0

    .line 119
    invoke-static {v0}, Lnet/pubnative/lite/sdk/network/PNHttpClient$Response;->access$100(Lnet/pubnative/lite/sdk/network/PNHttpClient$Response;)Ljava/lang/Exception;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 120
    iget-boolean v1, p0, Lnet/pubnative/lite/sdk/network/PNHttpClient$1;->val$shouldRetryIfFail:Z

    if-eqz v1, :cond_0

    .line 121
    iget-object v1, p0, Lnet/pubnative/lite/sdk/network/PNHttpClient$1;->val$url:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 122
    invoke-static {}, Lnet/pubnative/lite/sdk/network/PNHttpClient;->access$200()Ljava/util/Queue;

    move-result-object v1

    new-instance v2, Lnet/pubnative/lite/sdk/network/PendingRequest;

    iget-object v3, p0, Lnet/pubnative/lite/sdk/network/PNHttpClient$1;->val$url:Ljava/lang/String;

    iget-object v4, p0, Lnet/pubnative/lite/sdk/network/PNHttpClient$1;->val$postBody:Ljava/lang/String;

    iget-object v5, p0, Lnet/pubnative/lite/sdk/network/PNHttpClient$1;->val$headers:Ljava/util/Map;

    invoke-direct {v2, v3, v4, v5}, Lnet/pubnative/lite/sdk/network/PendingRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    invoke-interface {v1, v2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 126
    :cond_0
    iget-boolean v1, p0, Lnet/pubnative/lite/sdk/network/PNHttpClient$1;->val$shouldReturnOnMainThread:Z

    if-eqz v1, :cond_1

    .line 127
    invoke-static {}, Lnet/pubnative/lite/sdk/network/PNHttpClient;->access$300()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lnet/pubnative/lite/sdk/network/PNHttpClient$1$1;

    invoke-direct {v2, p0, v0}, Lnet/pubnative/lite/sdk/network/PNHttpClient$1$1;-><init>(Lnet/pubnative/lite/sdk/network/PNHttpClient$1;Lnet/pubnative/lite/sdk/network/PNHttpClient$Response;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 136
    :cond_1
    iget-object v1, p0, Lnet/pubnative/lite/sdk/network/PNHttpClient$1;->val$listener:Lnet/pubnative/lite/sdk/network/PNHttpClient$Listener;

    if-eqz v1, :cond_4

    .line 137
    invoke-static {v0}, Lnet/pubnative/lite/sdk/network/PNHttpClient$Response;->access$100(Lnet/pubnative/lite/sdk/network/PNHttpClient$Response;)Ljava/lang/Exception;

    move-result-object v0

    invoke-interface {v1, v0}, Lnet/pubnative/lite/sdk/network/PNHttpClient$Listener;->onFailure(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 141
    :cond_2
    iget-boolean v1, p0, Lnet/pubnative/lite/sdk/network/PNHttpClient$1;->val$shouldReturnOnMainThread:Z

    if-eqz v1, :cond_3

    .line 142
    invoke-static {}, Lnet/pubnative/lite/sdk/network/PNHttpClient;->access$300()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lnet/pubnative/lite/sdk/network/PNHttpClient$1$2;

    invoke-direct {v2, p0, v0}, Lnet/pubnative/lite/sdk/network/PNHttpClient$1$2;-><init>(Lnet/pubnative/lite/sdk/network/PNHttpClient$1;Lnet/pubnative/lite/sdk/network/PNHttpClient$Response;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 151
    :cond_3
    iget-object v1, p0, Lnet/pubnative/lite/sdk/network/PNHttpClient$1;->val$listener:Lnet/pubnative/lite/sdk/network/PNHttpClient$Listener;

    if-eqz v1, :cond_4

    .line 152
    invoke-static {v0}, Lnet/pubnative/lite/sdk/network/PNHttpClient$Response;->access$400(Lnet/pubnative/lite/sdk/network/PNHttpClient$Response;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lnet/pubnative/lite/sdk/network/PNHttpClient$Listener;->onSuccess(Ljava/lang/String;)V

    .line 156
    :cond_4
    :goto_0
    iget-object v0, p0, Lnet/pubnative/lite/sdk/network/PNHttpClient$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lnet/pubnative/lite/sdk/network/PNHttpClient;->access$500(Landroid/content/Context;)V

    return-void
.end method

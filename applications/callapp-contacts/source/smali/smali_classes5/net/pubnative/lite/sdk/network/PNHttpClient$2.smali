.class final Lnet/pubnative/lite/sdk/network/PNHttpClient$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/pubnative/lite/sdk/network/PNHttpClient;->makePendingRequest(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$headers:Ljava/util/Map;

.field final synthetic val$postBody:Ljava/lang/String;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V
    .locals 0

    .line 259
    iput-object p1, p0, Lnet/pubnative/lite/sdk/network/PNHttpClient$2;->val$url:Ljava/lang/String;

    iput-object p2, p0, Lnet/pubnative/lite/sdk/network/PNHttpClient$2;->val$headers:Ljava/util/Map;

    iput-object p3, p0, Lnet/pubnative/lite/sdk/network/PNHttpClient$2;->val$postBody:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 262
    iget-object v0, p0, Lnet/pubnative/lite/sdk/network/PNHttpClient$2;->val$url:Ljava/lang/String;

    iget-object v1, p0, Lnet/pubnative/lite/sdk/network/PNHttpClient$2;->val$headers:Ljava/util/Map;

    iget-object v2, p0, Lnet/pubnative/lite/sdk/network/PNHttpClient$2;->val$postBody:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lnet/pubnative/lite/sdk/network/PNHttpClient;->access$000(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Lnet/pubnative/lite/sdk/network/PNHttpClient$Response;

    move-result-object v0

    .line 263
    invoke-static {v0}, Lnet/pubnative/lite/sdk/network/PNHttpClient$Response;->access$100(Lnet/pubnative/lite/sdk/network/PNHttpClient$Response;)Ljava/lang/Exception;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 264
    iget-object v0, p0, Lnet/pubnative/lite/sdk/network/PNHttpClient$2;->val$url:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 265
    invoke-static {}, Lnet/pubnative/lite/sdk/network/PNHttpClient;->access$200()Ljava/util/Queue;

    move-result-object v0

    new-instance v1, Lnet/pubnative/lite/sdk/network/PendingRequest;

    iget-object v2, p0, Lnet/pubnative/lite/sdk/network/PNHttpClient$2;->val$url:Ljava/lang/String;

    iget-object v3, p0, Lnet/pubnative/lite/sdk/network/PNHttpClient$2;->val$postBody:Ljava/lang/String;

    iget-object v4, p0, Lnet/pubnative/lite/sdk/network/PNHttpClient$2;->val$headers:Ljava/util/Map;

    invoke-direct {v1, v2, v3, v4}, Lnet/pubnative/lite/sdk/network/PendingRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    invoke-interface {v0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

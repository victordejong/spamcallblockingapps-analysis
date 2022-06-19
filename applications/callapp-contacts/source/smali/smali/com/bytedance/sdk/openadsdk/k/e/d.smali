.class public Lcom/bytedance/sdk/openadsdk/k/e/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/k/e/b;


# instance fields
.field private a:Lcom/bytedance/sdk/adnet/face/IHttpStack;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/j/e;->a()Lcom/bytedance/sdk/adnet/face/IHttpStack;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/k/e/d;->a:Lcom/bytedance/sdk/adnet/face/IHttpStack;

    if-nez v0, :cond_0

    .line 21
    new-instance v0, Lcom/bytedance/sdk/adnet/core/j;

    invoke-direct {v0}, Lcom/bytedance/sdk/adnet/core/j;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/k/e/d;->a:Lcom/bytedance/sdk/adnet/face/IHttpStack;

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Lcom/bytedance/sdk/openadsdk/k/e/f;)Lcom/bytedance/sdk/openadsdk/k/e/a;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/bytedance/sdk/adnet/err/VAdError;
        }
    .end annotation

    .line 28
    new-instance v0, Lcom/bytedance/sdk/openadsdk/k/e/e;

    iget v1, p1, Lcom/bytedance/sdk/openadsdk/k/e/f;->a:I

    iget-object v2, p1, Lcom/bytedance/sdk/openadsdk/k/e/f;->b:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/k/e/e;-><init>(ILjava/lang/String;)V

    .line 29
    iget-wide v1, p1, Lcom/bytedance/sdk/openadsdk/k/e/f;->c:J

    const-wide/16 v3, -0x1

    cmp-long v5, v1, v3

    if-eqz v5, :cond_0

    .line 30
    new-instance v1, Lcom/bytedance/sdk/adnet/core/e;

    invoke-direct {v1}, Lcom/bytedance/sdk/adnet/core/e;-><init>()V

    iget-wide v2, p1, Lcom/bytedance/sdk/openadsdk/k/e/f;->c:J

    long-to-int v3, v2

    invoke-virtual {v1, v3}, Lcom/bytedance/sdk/adnet/core/e;->a(I)Lcom/bytedance/sdk/adnet/core/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/k/e/e;->setRetryPolicy(Lcom/bytedance/sdk/adnet/face/d;)Lcom/bytedance/sdk/adnet/core/Request;

    .line 32
    :cond_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/k/e/d;->a:Lcom/bytedance/sdk/adnet/face/IHttpStack;

    iget-object v2, p1, Lcom/bytedance/sdk/openadsdk/k/e/f;->e:Ljava/util/Map;

    invoke-interface {v1, v0, v2}, Lcom/bytedance/sdk/adnet/face/IHttpStack;->performRequest(Lcom/bytedance/sdk/adnet/core/Request;Ljava/util/Map;)Lcom/bytedance/sdk/adnet/core/HttpResponse;

    move-result-object v0

    .line 33
    new-instance v1, Lcom/bytedance/sdk/openadsdk/k/e/g;

    invoke-direct {v1, v0, p1}, Lcom/bytedance/sdk/openadsdk/k/e/g;-><init>(Lcom/bytedance/sdk/adnet/core/HttpResponse;Lcom/bytedance/sdk/openadsdk/k/e/f;)V

    return-object v1
.end method

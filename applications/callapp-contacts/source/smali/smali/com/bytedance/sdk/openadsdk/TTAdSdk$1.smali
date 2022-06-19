.class final Lcom/bytedance/sdk/openadsdk/TTAdSdk$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/TTAdSdk;->init(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/TTAdConfig;Lcom/bytedance/sdk/openadsdk/TTAdSdk$InitCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/bytedance/sdk/openadsdk/TTAdConfig;

.field final synthetic c:Lcom/bytedance/sdk/openadsdk/TTAdSdk$InitCallback;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/TTAdConfig;Lcom/bytedance/sdk/openadsdk/TTAdSdk$InitCallback;)V
    .locals 0

    .line 122
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/TTAdSdk$1;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/TTAdSdk$1;->b:Lcom/bytedance/sdk/openadsdk/TTAdConfig;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/TTAdSdk$1;->c:Lcom/bytedance/sdk/openadsdk/TTAdSdk$InitCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 126
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/TTAdSdk$1;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/TTAdSdk$1;->b:Lcom/bytedance/sdk/openadsdk/TTAdConfig;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/TTAdSdk;->a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/TTAdConfig;Z)V

    .line 127
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/TTAdSdk$1;->c:Lcom/bytedance/sdk/openadsdk/TTAdSdk$InitCallback;

    if-eqz v0, :cond_0

    .line 128
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTAdSdk$InitCallback;->success()V

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/TTAdSdk$1;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/TTAdSdk$1;->b:Lcom/bytedance/sdk/openadsdk/TTAdConfig;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/TTAdSdk;->a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/TTAdConfig;)V

    .line 131
    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/TTAdSdk;->a(Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 133
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 134
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/TTAdSdk$1;->c:Lcom/bytedance/sdk/openadsdk/TTAdSdk$InitCallback;

    if-eqz v1, :cond_1

    const/16 v2, 0xfa0

    .line 135
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/TTAdSdk$InitCallback;->fail(ILjava/lang/String;)V

    :cond_1
    const/4 v0, 0x0

    .line 137
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/TTAdSdk;->a(Z)Z

    return-void
.end method

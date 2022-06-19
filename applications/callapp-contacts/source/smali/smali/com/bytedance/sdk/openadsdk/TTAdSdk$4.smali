.class final Lcom/bytedance/sdk/openadsdk/TTAdSdk$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/TTAdSdk;->d(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/TTAdConfig;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/TTAdConfig;

.field final synthetic b:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/TTAdConfig;Landroid/content/Context;)V
    .locals 0

    .line 278
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/TTAdSdk$4;->a:Lcom/bytedance/sdk/openadsdk/TTAdConfig;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/TTAdSdk$4;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 282
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/TTAdSdk$4;->a:Lcom/bytedance/sdk/openadsdk/TTAdConfig;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/TTAdConfig;->isSupportMultiProcess()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 283
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/TTAdSdk$4;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/v;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 284
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->h()Lcom/bytedance/sdk/openadsdk/core/h/e;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/h/c;->a(Lcom/bytedance/sdk/openadsdk/core/h/b;)Lcom/bytedance/sdk/openadsdk/core/h/c;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/h/c;->a(Z)V

    const-string v0, "TTAdSdk"

    const-string v1, "Load setting in main process"

    .line 285
    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/q;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 288
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->h()Lcom/bytedance/sdk/openadsdk/core/h/e;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/h/c;->a(Lcom/bytedance/sdk/openadsdk/core/h/b;)Lcom/bytedance/sdk/openadsdk/core/h/c;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/h/c;->a(Z)V

    .line 291
    :cond_1
    :goto_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->c()Lcom/bytedance/sdk/openadsdk/d/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/d/c;->a()V

    .line 292
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->e()Lcom/bytedance/sdk/openadsdk/d/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/d/c;->a()V

    .line 293
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->d()Lcom/bytedance/sdk/openadsdk/d/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/d/c;->a()V

    return-void
.end method

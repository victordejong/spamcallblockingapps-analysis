.class final Lcom/bytedance/sdk/openadsdk/TTAdSdk$3;
.super Lcom/bytedance/sdk/openadsdk/l/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/TTAdSdk;->d(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/TTAdConfig;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    .line 245
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/TTAdSdk$3;->a:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/l/g;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 249
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->h()Lcom/bytedance/sdk/openadsdk/core/h/e;

    move-result-object v0

    .line 250
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/h/e;->y()Z

    move-result v1

    if-nez v1, :cond_1

    .line 251
    monitor-enter v0

    .line 252
    :try_start_0
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/h/e;->y()Z

    move-result v1

    if-nez v1, :cond_0

    .line 253
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/h/e;->a()V

    .line 255
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 258
    :cond_1
    :goto_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/j/e;->c()Lcom/bytedance/sdk/openadsdk/j/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/j/e;->f()Lcom/bytedance/sdk/adnet/core/l;

    .line 261
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/h;->f()V

    .line 264
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/j/e;->c()Lcom/bytedance/sdk/openadsdk/j/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/j/e;->e()Lcom/bytedance/sdk/adnet/core/l;

    .line 265
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/j/e;->c()Lcom/bytedance/sdk/openadsdk/j/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/j/e;->d()Lcom/bytedance/sdk/adnet/core/l;

    .line 266
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/TTAdSdk$3;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/k;->a(Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 269
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/l/e;->a(Z)V

    .line 271
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-ne v0, v1, :cond_2

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/y;->r()Z

    move-result v0

    if-nez v0, :cond_3

    .line 272
    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/TTAdSdk$3;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/h;->a(Landroid/content/Context;)V

    .line 274
    :cond_3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/TTAdSdk$3;->a:Landroid/content/Context;

    const/16 v1, 0x14

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/video/a/b/a;->a(Landroid/content/Context;I)V

    return-void
.end method

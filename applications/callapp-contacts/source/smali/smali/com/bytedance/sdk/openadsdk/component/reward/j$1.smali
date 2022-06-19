.class Lcom/bytedance/sdk/openadsdk/component/reward/j$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/utils/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/component/reward/j;->showFullScreenVideoAd(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/component/reward/j;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/component/reward/j;)V
    .locals 0

    .line 153
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/j$1;->a:Lcom/bytedance/sdk/openadsdk/component/reward/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 156
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/j$1;->a:Lcom/bytedance/sdk/openadsdk/component/reward/j;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/j;->a(Lcom/bytedance/sdk/openadsdk/component/reward/j;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    :try_start_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/i/a;->a()Lcom/bytedance/sdk/openadsdk/i/a;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/j$1;->a:Lcom/bytedance/sdk/openadsdk/component/reward/j;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/component/reward/j;->b(Lcom/bytedance/sdk/openadsdk/component/reward/j;)Lcom/bytedance/sdk/openadsdk/core/e/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/e/i;->B()Lcom/bytedance/sdk/openadsdk/core/e/o;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/e/o;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/i/a;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/Throwable;)V
    .locals 3

    const-string v0, "TTFullScreenVideoAdImpl"

    const-string v1, "show full screen video error: "

    .line 168
    invoke-static {v0, v1, p1}, Lcom/bytedance/sdk/openadsdk/utils/q;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 169
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/j$1;->a:Lcom/bytedance/sdk/openadsdk/component/reward/j;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/j;->a(Lcom/bytedance/sdk/openadsdk/component/reward/j;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 172
    :try_start_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/i/a;->a()Lcom/bytedance/sdk/openadsdk/i/a;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/j$1;->a:Lcom/bytedance/sdk/openadsdk/component/reward/j;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/component/reward/j;->b(Lcom/bytedance/sdk/openadsdk/component/reward/j;)Lcom/bytedance/sdk/openadsdk/core/e/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/e/i;->B()Lcom/bytedance/sdk/openadsdk/core/e/o;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/e/o;->i()Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, "playable tool error open"

    :goto_0
    invoke-virtual {v0, v1, v2, p1}, Lcom/bytedance/sdk/openadsdk/i/a;->a(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_1
    return-void
.end method

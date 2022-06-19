.class Lcom/bytedance/sdk/openadsdk/core/video/d/d$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/video/d/d;->b(Lcom/bytedance/sdk/openadsdk/core/video/d/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/core/video/d/d;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/video/d/d;)V
    .locals 0

    .line 802
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d$8;->a:Lcom/bytedance/sdk/openadsdk/core/video/d/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 806
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d$8;->a:Lcom/bytedance/sdk/openadsdk/core/video/d/d;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->c(Lcom/bytedance/sdk/openadsdk/core/video/d/d;)Lcom/bytedance/sdk/openadsdk/core/video/d/c;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/video/d/c;->h()V

    .line 807
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d$8;->a:Lcom/bytedance/sdk/openadsdk/core/video/d/d;

    const/16 v1, 0xcf

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->a(Lcom/bytedance/sdk/openadsdk/core/video/d/d;I)I

    .line 808
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d$8;->a:Lcom/bytedance/sdk/openadsdk/core/video/d/d;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->a(Lcom/bytedance/sdk/openadsdk/core/video/d/d;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    const-string v1, "SSMediaPlayeWrapper"

    const-string v2, "onPrepared error: "

    .line 810
    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/utils/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

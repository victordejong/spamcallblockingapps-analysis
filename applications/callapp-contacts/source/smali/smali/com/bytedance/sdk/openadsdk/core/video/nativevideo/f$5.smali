.class Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;)V
    .locals 0

    .line 522
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f$5;->a:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 525
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f$5;->a:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->b(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;)Lcom/bytedance/sdk/openadsdk/core/video/d/d;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 526
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f$5;->a:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->i(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    .line 527
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f$5;->a:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->b(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;)Lcom/bytedance/sdk/openadsdk/core/video/d/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->e()V

    .line 529
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f$5;->a:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->b(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;)Lcom/bytedance/sdk/openadsdk/core/video/d/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->f()V

    .line 531
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f$5;->a:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->e(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;)Lcom/bytedance/sdk/openadsdk/utils/ah;

    move-result-object v0

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, p0, v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/ah;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

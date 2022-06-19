.class Lcom/bytedance/sdk/openadsdk/video/view/PlayerLayout$a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/video/view/PlayerLayout$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/video/view/PlayerLayout$a;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/video/view/PlayerLayout$a;)V
    .locals 0

    .line 580
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/video/view/PlayerLayout$a$1;->a:Lcom/bytedance/sdk/openadsdk/video/view/PlayerLayout$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 583
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/video/view/PlayerLayout$a$1;->a:Lcom/bytedance/sdk/openadsdk/video/view/PlayerLayout$a;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/video/view/PlayerLayout$a;->a:Lcom/bytedance/sdk/openadsdk/video/view/PlayerLayout;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/video/view/PlayerLayout;->getCurrentPositionWhenPlaying()J

    move-result-wide v3

    .line 584
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/video/view/PlayerLayout$a$1;->a:Lcom/bytedance/sdk/openadsdk/video/view/PlayerLayout$a;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/video/view/PlayerLayout$a;->a:Lcom/bytedance/sdk/openadsdk/video/view/PlayerLayout;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/video/view/PlayerLayout;->getDuration()J

    move-result-wide v5

    const-wide/16 v0, 0x64

    mul-long v0, v0, v3

    const-wide/16 v7, 0x0

    cmp-long v2, v5, v7

    if-nez v2, :cond_0

    const-wide/16 v7, 0x1

    goto :goto_0

    :cond_0
    move-wide v7, v5

    .line 585
    :goto_0
    div-long/2addr v0, v7

    long-to-int v2, v0

    .line 586
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/video/view/PlayerLayout$a$1;->a:Lcom/bytedance/sdk/openadsdk/video/view/PlayerLayout$a;

    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/video/view/PlayerLayout$a;->a:Lcom/bytedance/sdk/openadsdk/video/view/PlayerLayout;

    invoke-virtual/range {v1 .. v6}, Lcom/bytedance/sdk/openadsdk/video/view/PlayerLayout;->a(IJJ)V

    return-void
.end method

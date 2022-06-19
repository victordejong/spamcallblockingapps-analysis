.class public Lcom/bytedance/sdk/openadsdk/video/view/PlayerLayout$a;
.super Ljava/util/TimerTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/video/view/PlayerLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/video/view/PlayerLayout;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/video/view/PlayerLayout;)V
    .locals 0

    .line 576
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/video/view/PlayerLayout$a;->a:Lcom/bytedance/sdk/openadsdk/video/view/PlayerLayout;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 579
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/video/view/PlayerLayout$a;->a:Lcom/bytedance/sdk/openadsdk/video/view/PlayerLayout;

    iget v0, v0, Lcom/bytedance/sdk/openadsdk/video/view/PlayerLayout;->c:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/video/view/PlayerLayout$a;->a:Lcom/bytedance/sdk/openadsdk/video/view/PlayerLayout;

    iget v0, v0, Lcom/bytedance/sdk/openadsdk/video/view/PlayerLayout;->c:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/video/view/PlayerLayout$a;->a:Lcom/bytedance/sdk/openadsdk/video/view/PlayerLayout;

    iget v0, v0, Lcom/bytedance/sdk/openadsdk/video/view/PlayerLayout;->c:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 580
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/video/view/PlayerLayout$a;->a:Lcom/bytedance/sdk/openadsdk/video/view/PlayerLayout;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/video/view/PlayerLayout$a$1;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/video/view/PlayerLayout$a$1;-><init>(Lcom/bytedance/sdk/openadsdk/video/view/PlayerLayout$a;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/video/view/PlayerLayout;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

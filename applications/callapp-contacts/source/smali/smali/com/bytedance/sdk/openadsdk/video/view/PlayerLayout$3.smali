.class Lcom/bytedance/sdk/openadsdk/video/view/PlayerLayout$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/video/view/PlayerLayout;->k()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/video/view/PlayerLayout;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/video/view/PlayerLayout;)V
    .locals 0

    .line 344
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/video/view/PlayerLayout$3;->a:Lcom/bytedance/sdk/openadsdk/video/view/PlayerLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1

    .line 347
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/video/view/PlayerLayout$3;->a:Lcom/bytedance/sdk/openadsdk/video/view/PlayerLayout;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/video/view/PlayerLayout;->e:Lcom/bytedance/sdk/openadsdk/video/c/a;

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    .line 348
    invoke-interface {p1, v0}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 349
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/video/view/PlayerLayout$3;->a:Lcom/bytedance/sdk/openadsdk/video/view/PlayerLayout;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/video/view/PlayerLayout;->e:Lcom/bytedance/sdk/openadsdk/video/c/a;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/video/c/a;->a(Landroid/view/SurfaceHolder;)V

    .line 350
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/video/view/PlayerLayout$3;->a:Lcom/bytedance/sdk/openadsdk/video/view/PlayerLayout;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/video/view/PlayerLayout;->e:Lcom/bytedance/sdk/openadsdk/video/c/a;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/video/c/a;->a()V

    :cond_0
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 5

    const/4 p1, 0x2

    new-array v0, p1, [Ljava/lang/Object;

    const-string v1, "video_new surfaceDestroyed "

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 361
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const-string v1, "PlayerLayout"

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/video/d/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 362
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/video/view/PlayerLayout$3;->a:Lcom/bytedance/sdk/openadsdk/video/view/PlayerLayout;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/video/view/PlayerLayout;->e:Lcom/bytedance/sdk/openadsdk/video/c/a;

    if-eqz v0, :cond_0

    .line 363
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/video/view/PlayerLayout$3;->a:Lcom/bytedance/sdk/openadsdk/video/view/PlayerLayout;

    iget-object v4, v0, Lcom/bytedance/sdk/openadsdk/video/view/PlayerLayout;->e:Lcom/bytedance/sdk/openadsdk/video/c/a;

    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/video/c/a;->c()I

    move-result v4

    iput v4, v0, Lcom/bytedance/sdk/openadsdk/video/view/PlayerLayout;->a:I

    .line 364
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/video/view/PlayerLayout$3;->a:Lcom/bytedance/sdk/openadsdk/video/view/PlayerLayout;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/video/view/PlayerLayout;->e:Lcom/bytedance/sdk/openadsdk/video/c/a;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/video/c/a;->b()V

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "video_new  "

    aput-object v0, p1, v2

    .line 365
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/video/view/PlayerLayout$3;->a:Lcom/bytedance/sdk/openadsdk/video/view/PlayerLayout;

    iget v0, v0, Lcom/bytedance/sdk/openadsdk/video/view/PlayerLayout;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p1, v3

    invoke-static {v1, p1}, Lcom/bytedance/sdk/openadsdk/video/d/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.class Lcom/bytedance/sdk/openadsdk/video/view/PlayerLayout$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/video/view/PlayerLayout;->j()V
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

    .line 304
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/video/view/PlayerLayout$2;->a:Lcom/bytedance/sdk/openadsdk/video/view/PlayerLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    .line 307
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/video/view/PlayerLayout$2;->a:Lcom/bytedance/sdk/openadsdk/video/view/PlayerLayout;

    iget-object p2, p2, Lcom/bytedance/sdk/openadsdk/video/view/PlayerLayout;->e:Lcom/bytedance/sdk/openadsdk/video/c/a;

    if-eqz p2, :cond_0

    .line 308
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/video/view/PlayerLayout$2;->a:Lcom/bytedance/sdk/openadsdk/video/view/PlayerLayout;

    iget-object p2, p2, Lcom/bytedance/sdk/openadsdk/video/view/PlayerLayout;->e:Lcom/bytedance/sdk/openadsdk/video/c/a;

    new-instance p3, Landroid/view/Surface;

    invoke-direct {p3, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    invoke-virtual {p2, p3}, Lcom/bytedance/sdk/openadsdk/video/c/a;->a(Landroid/view/Surface;)V

    .line 309
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/video/view/PlayerLayout$2;->a:Lcom/bytedance/sdk/openadsdk/video/view/PlayerLayout;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/video/view/PlayerLayout;->e:Lcom/bytedance/sdk/openadsdk/video/c/a;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/video/c/a;->a()V

    :cond_0
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 2

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "video_new  onSurfaceTextureDestroyed: "

    const/4 v1, 0x0

    aput-object v0, p1, v1

    const-string v0, "PlayerLayout"

    .line 321
    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/video/d/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    return v1
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    return-void
.end method

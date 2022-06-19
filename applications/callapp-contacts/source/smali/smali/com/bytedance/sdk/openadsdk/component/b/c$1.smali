.class Lcom/bytedance/sdk/openadsdk/component/b/c$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/component/b/c;->getAdView()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/component/b/c;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/component/b/c;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/b/c$1;->a:Lcom/bytedance/sdk/openadsdk/component/b/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;I)V
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/b/c$1;->a:Lcom/bytedance/sdk/openadsdk/component/b/c;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/b/c;->a(Lcom/bytedance/sdk/openadsdk/component/b/c;)Lcom/bytedance/sdk/openadsdk/core/m;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/b/c$1;->a:Lcom/bytedance/sdk/openadsdk/component/b/c;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/b/c;->b(Lcom/bytedance/sdk/openadsdk/component/b/c;)Lcom/bytedance/sdk/openadsdk/core/m;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/m;->a(Landroid/view/View;I)V

    :cond_0
    return-void
.end method

.class Lcom/bytedance/sdk/openadsdk/component/reward/c$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/video/b/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/component/reward/c$2;->a(Lcom/bytedance/sdk/openadsdk/core/e/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/core/e/i;

.field final synthetic b:Lcom/bytedance/sdk/openadsdk/component/reward/c$2;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/component/reward/c$2;Lcom/bytedance/sdk/openadsdk/core/e/i;)V
    .locals 0

    .line 205
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/c$2$1;->b:Lcom/bytedance/sdk/openadsdk/component/reward/c$2;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/c$2$1;->a:Lcom/bytedance/sdk/openadsdk/core/e/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 0

    .line 208
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/c$2$1;->b:Lcom/bytedance/sdk/openadsdk/component/reward/c$2;

    iget-boolean p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/c$2;->a:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/c$2$1;->b:Lcom/bytedance/sdk/openadsdk/component/reward/c$2;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/c$2;->b:Lcom/bytedance/sdk/openadsdk/TTAdNative$FullScreenVideoAdListener;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/c$2$1;->a:Lcom/bytedance/sdk/openadsdk/core/e/i;

    if-eqz p1, :cond_0

    .line 209
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/e/i;->x()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 210
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/c$2$1;->b:Lcom/bytedance/sdk/openadsdk/component/reward/c$2;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/c$2;->b:Lcom/bytedance/sdk/openadsdk/TTAdNative$FullScreenVideoAdListener;

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/TTAdNative$FullScreenVideoAdListener;->onFullScreenVideoCached()V

    :cond_0
    return-void
.end method

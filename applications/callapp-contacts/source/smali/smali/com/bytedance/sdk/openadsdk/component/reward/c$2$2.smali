.class Lcom/bytedance/sdk/openadsdk/component/reward/c$2$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/component/reward/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/component/reward/c$2;->a(Lcom/bytedance/sdk/openadsdk/core/e/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bytedance/sdk/openadsdk/component/reward/a$a<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/core/e/i;

.field final synthetic b:Lcom/bytedance/sdk/openadsdk/component/reward/j;

.field final synthetic c:Lcom/bytedance/sdk/openadsdk/component/reward/c$2;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/component/reward/c$2;Lcom/bytedance/sdk/openadsdk/core/e/i;Lcom/bytedance/sdk/openadsdk/component/reward/j;)V
    .locals 0

    .line 229
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/c$2$2;->c:Lcom/bytedance/sdk/openadsdk/component/reward/c$2;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/c$2$2;->a:Lcom/bytedance/sdk/openadsdk/core/e/i;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/c$2$2;->b:Lcom/bytedance/sdk/openadsdk/component/reward/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ZLjava/lang/Object;)V
    .locals 1

    .line 232
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "download video file: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", preload: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/c$2$2;->c:Lcom/bytedance/sdk/openadsdk/component/reward/c$2;

    iget-boolean v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/c$2;->a:Z

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "FullScreenVideoLoadManager"

    invoke-static {v0, p2}, Lcom/bytedance/sdk/openadsdk/utils/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 234
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/c$2$2;->c:Lcom/bytedance/sdk/openadsdk/component/reward/c$2;

    iget-object p2, p2, Lcom/bytedance/sdk/openadsdk/component/reward/c$2;->d:Lcom/bytedance/sdk/openadsdk/component/reward/c;

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/component/reward/c;->a(Lcom/bytedance/sdk/openadsdk/component/reward/c;)Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/component/reward/a;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/component/reward/a;

    move-result-object p2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/c$2$2;->a:Lcom/bytedance/sdk/openadsdk/core/e/i;

    invoke-virtual {p2, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/a;->a(Lcom/bytedance/sdk/openadsdk/core/e/i;)Ljava/lang/String;

    move-result-object p2

    .line 235
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/c$2$2;->b:Lcom/bytedance/sdk/openadsdk/component/reward/j;

    invoke-virtual {v0, p2}, Lcom/bytedance/sdk/openadsdk/component/reward/j;->a(Ljava/lang/String;)V

    .line 237
    :cond_0
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/c$2$2;->c:Lcom/bytedance/sdk/openadsdk/component/reward/c$2;

    iget-boolean p2, p2, Lcom/bytedance/sdk/openadsdk/component/reward/c$2;->a:Z

    if-nez p2, :cond_1

    .line 238
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/c$2$2;->a:Lcom/bytedance/sdk/openadsdk/core/e/i;

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/d/e;->a(Lcom/bytedance/sdk/openadsdk/core/e/i;)V

    if-eqz p1, :cond_2

    .line 239
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/c$2$2;->c:Lcom/bytedance/sdk/openadsdk/component/reward/c$2;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/c$2;->b:Lcom/bytedance/sdk/openadsdk/TTAdNative$FullScreenVideoAdListener;

    if-eqz p1, :cond_2

    .line 240
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/c$2$2;->c:Lcom/bytedance/sdk/openadsdk/component/reward/c$2;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/c$2;->b:Lcom/bytedance/sdk/openadsdk/TTAdNative$FullScreenVideoAdListener;

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/TTAdNative$FullScreenVideoAdListener;->onFullScreenVideoCached()V

    return-void

    :cond_1
    if-eqz p1, :cond_2

    .line 245
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/c$2$2;->c:Lcom/bytedance/sdk/openadsdk/component/reward/c$2;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/c$2;->d:Lcom/bytedance/sdk/openadsdk/component/reward/c;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/c;->a(Lcom/bytedance/sdk/openadsdk/component/reward/c;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/a;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/component/reward/a;

    move-result-object p1

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/c$2$2;->c:Lcom/bytedance/sdk/openadsdk/component/reward/c$2;

    iget-object p2, p2, Lcom/bytedance/sdk/openadsdk/component/reward/c$2;->c:Lcom/bytedance/sdk/openadsdk/AdSlot;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/c$2$2;->a:Lcom/bytedance/sdk/openadsdk/core/e/i;

    invoke-virtual {p1, p2, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/a;->a(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/e/i;)V

    :cond_2
    return-void
.end method

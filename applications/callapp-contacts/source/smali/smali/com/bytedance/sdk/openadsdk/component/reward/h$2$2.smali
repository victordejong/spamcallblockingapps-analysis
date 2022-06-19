.class Lcom/bytedance/sdk/openadsdk/component/reward/h$2$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/component/reward/f$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/component/reward/h$2;->a(Lcom/bytedance/sdk/openadsdk/core/e/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bytedance/sdk/openadsdk/component/reward/f$a<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/core/e/i;

.field final synthetic b:Lcom/bytedance/sdk/openadsdk/component/reward/k;

.field final synthetic c:Lcom/bytedance/sdk/openadsdk/component/reward/h$2;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/component/reward/h$2;Lcom/bytedance/sdk/openadsdk/core/e/i;Lcom/bytedance/sdk/openadsdk/component/reward/k;)V
    .locals 0

    .line 243
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/h$2$2;->c:Lcom/bytedance/sdk/openadsdk/component/reward/h$2;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/h$2$2;->a:Lcom/bytedance/sdk/openadsdk/core/e/i;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/h$2$2;->b:Lcom/bytedance/sdk/openadsdk/component/reward/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ZLjava/lang/Object;)V
    .locals 1

    .line 246
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "download video file: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", preload: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/h$2$2;->c:Lcom/bytedance/sdk/openadsdk/component/reward/h$2;

    iget-boolean v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/h$2;->a:Z

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "RewardVideoLoadManager"

    invoke-static {v0, p2}, Lcom/bytedance/sdk/openadsdk/utils/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 248
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/h$2$2;->c:Lcom/bytedance/sdk/openadsdk/component/reward/h$2;

    iget-object p2, p2, Lcom/bytedance/sdk/openadsdk/component/reward/h$2;->d:Lcom/bytedance/sdk/openadsdk/component/reward/h;

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/component/reward/h;->a(Lcom/bytedance/sdk/openadsdk/component/reward/h;)Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/component/reward/f;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/component/reward/f;

    move-result-object p2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/h$2$2;->a:Lcom/bytedance/sdk/openadsdk/core/e/i;

    invoke-virtual {p2, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/f;->a(Lcom/bytedance/sdk/openadsdk/core/e/i;)Ljava/lang/String;

    move-result-object p2

    .line 249
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/h$2$2;->b:Lcom/bytedance/sdk/openadsdk/component/reward/k;

    invoke-virtual {v0, p2}, Lcom/bytedance/sdk/openadsdk/component/reward/k;->a(Ljava/lang/String;)V

    .line 251
    :cond_0
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/h$2$2;->c:Lcom/bytedance/sdk/openadsdk/component/reward/h$2;

    iget-boolean p2, p2, Lcom/bytedance/sdk/openadsdk/component/reward/h$2;->a:Z

    if-nez p2, :cond_1

    .line 252
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/h$2$2;->a:Lcom/bytedance/sdk/openadsdk/core/e/i;

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/d/e;->a(Lcom/bytedance/sdk/openadsdk/core/e/i;)V

    if-eqz p1, :cond_2

    .line 253
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/h$2$2;->c:Lcom/bytedance/sdk/openadsdk/component/reward/h$2;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/h$2;->b:Lcom/bytedance/sdk/openadsdk/TTAdNative$RewardVideoAdListener;

    if-eqz p1, :cond_2

    .line 254
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/h$2$2;->c:Lcom/bytedance/sdk/openadsdk/component/reward/h$2;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/h$2;->b:Lcom/bytedance/sdk/openadsdk/TTAdNative$RewardVideoAdListener;

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/TTAdNative$RewardVideoAdListener;->onRewardVideoCached()V

    return-void

    :cond_1
    if-eqz p1, :cond_2

    .line 259
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/h$2$2;->c:Lcom/bytedance/sdk/openadsdk/component/reward/h$2;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/h$2;->d:Lcom/bytedance/sdk/openadsdk/component/reward/h;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/h;->a(Lcom/bytedance/sdk/openadsdk/component/reward/h;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/f;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/component/reward/f;

    move-result-object p1

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/h$2$2;->c:Lcom/bytedance/sdk/openadsdk/component/reward/h$2;

    iget-object p2, p2, Lcom/bytedance/sdk/openadsdk/component/reward/h$2;->c:Lcom/bytedance/sdk/openadsdk/AdSlot;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/h$2$2;->a:Lcom/bytedance/sdk/openadsdk/core/e/i;

    invoke-virtual {p1, p2, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/f;->a(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/e/i;)V

    :cond_2
    return-void
.end method

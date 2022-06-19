.class Lcom/bytedance/sdk/openadsdk/component/reward/h$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/o$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/component/reward/h;->b(Lcom/bytedance/sdk/openadsdk/AdSlot;ZLcom/bytedance/sdk/openadsdk/TTAdNative$RewardVideoAdListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/bytedance/sdk/openadsdk/TTAdNative$RewardVideoAdListener;

.field final synthetic c:Lcom/bytedance/sdk/openadsdk/AdSlot;

.field final synthetic d:Lcom/bytedance/sdk/openadsdk/component/reward/h;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/component/reward/h;ZLcom/bytedance/sdk/openadsdk/TTAdNative$RewardVideoAdListener;Lcom/bytedance/sdk/openadsdk/AdSlot;)V
    .locals 0

    .line 185
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/h$2;->d:Lcom/bytedance/sdk/openadsdk/component/reward/h;

    iput-boolean p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/h$2;->a:Z

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/h$2;->b:Lcom/bytedance/sdk/openadsdk/TTAdNative$RewardVideoAdListener;

    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/component/reward/h$2;->c:Lcom/bytedance/sdk/openadsdk/AdSlot;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 1

    .line 188
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/h$2;->a:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/h$2;->b:Lcom/bytedance/sdk/openadsdk/TTAdNative$RewardVideoAdListener;

    if-eqz v0, :cond_0

    .line 189
    invoke-interface {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/TTAdNative$RewardVideoAdListener;->onError(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/core/e/a;)V
    .locals 4

    .line 195
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/e/a;->b()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/e/a;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 196
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "get material data success isPreload="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/h$2;->a:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RewardVideoLoadManager"

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/utils/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/e/a;->b()Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bytedance/sdk/openadsdk/core/e/i;

    const/4 v0, 0x1

    .line 200
    :try_start_0
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/e/i;->E()Lcom/bytedance/sdk/openadsdk/core/e/h;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/e/i;->E()Lcom/bytedance/sdk/openadsdk/core/e/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/e/h;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 201
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/e/i;->E()Lcom/bytedance/sdk/openadsdk/core/e/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/e/h;->a()Ljava/lang/String;

    move-result-object v1

    .line 202
    new-instance v2, Lcom/bytedance/sdk/openadsdk/j/c;

    invoke-direct {v2, v0}, Lcom/bytedance/sdk/openadsdk/j/c;-><init>(Z)V

    .line 203
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/h$2;->c:Lcom/bytedance/sdk/openadsdk/AdSlot;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getCodeId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/openadsdk/j/c;->a(Ljava/lang/String;)V

    const/4 v3, 0x7

    .line 204
    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/openadsdk/j/c;->a(I)V

    .line 205
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/e/i;->P()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/openadsdk/j/c;->c(Ljava/lang/String;)V

    .line 206
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/e/i;->S()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/openadsdk/j/c;->d(Ljava/lang/String;)V

    .line 207
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/e/i;->S()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/utils/af;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/openadsdk/j/c;->b(Ljava/lang/String;)V

    .line 208
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/j/e;->c()Lcom/bytedance/sdk/openadsdk/j/e;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/j/e;->h()Lcom/bytedance/sdk/adnet/b/d;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Lcom/bytedance/sdk/adnet/b/d;->a(Ljava/lang/String;Lcom/bytedance/sdk/adnet/b/d$e;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    nop

    .line 214
    :cond_0
    :goto_0
    new-instance v1, Lcom/bytedance/sdk/openadsdk/component/reward/k;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/h$2;->d:Lcom/bytedance/sdk/openadsdk/component/reward/h;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/component/reward/h;->a(Lcom/bytedance/sdk/openadsdk/component/reward/h;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/h$2;->c:Lcom/bytedance/sdk/openadsdk/AdSlot;

    invoke-direct {v1, v2, p1, v3}, Lcom/bytedance/sdk/openadsdk/component/reward/k;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/e/i;Lcom/bytedance/sdk/openadsdk/AdSlot;)V

    .line 215
    iget-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/h$2;->a:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/h$2;->b:Lcom/bytedance/sdk/openadsdk/TTAdNative$RewardVideoAdListener;

    if-eqz v2, :cond_1

    .line 216
    invoke-interface {v2, v1}, Lcom/bytedance/sdk/openadsdk/TTAdNative$RewardVideoAdListener;->onRewardVideoAdLoad(Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd;)V

    .line 220
    :cond_1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->a()Lcom/bytedance/sdk/openadsdk/core/video/b/a;

    move-result-object v2

    new-instance v3, Lcom/bytedance/sdk/openadsdk/component/reward/h$2$1;

    invoke-direct {v3, p0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/h$2$1;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/h$2;Lcom/bytedance/sdk/openadsdk/core/e/i;)V

    invoke-virtual {v2, p1, v3}, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->a(Lcom/bytedance/sdk/openadsdk/core/e/i;Lcom/bytedance/sdk/openadsdk/core/video/b/a$a;)V

    .line 230
    iget-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/h$2;->a:Z

    if-eqz v2, :cond_3

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/e/i;->x()Z

    move-result v2

    if-nez v2, :cond_3

    .line 232
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->h()Lcom/bytedance/sdk/openadsdk/core/h/e;

    move-result-object v2

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/h$2;->c:Lcom/bytedance/sdk/openadsdk/AdSlot;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getCodeId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/openadsdk/core/h/e;->q(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/h/a;

    move-result-object v2

    .line 233
    iget v2, v2, Lcom/bytedance/sdk/openadsdk/core/h/a;->d:I

    if-ne v2, v0, :cond_3

    .line 234
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/h$2;->d:Lcom/bytedance/sdk/openadsdk/component/reward/h;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/h;->a(Lcom/bytedance/sdk/openadsdk/component/reward/h;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/t;->d(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 235
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/h$2;->d:Lcom/bytedance/sdk/openadsdk/component/reward/h;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/component/reward/h$a;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/h$2;->c:Lcom/bytedance/sdk/openadsdk/AdSlot;

    invoke-direct {v1, v0, p1, v2}, Lcom/bytedance/sdk/openadsdk/component/reward/h$a;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/h;Lcom/bytedance/sdk/openadsdk/core/e/i;Lcom/bytedance/sdk/openadsdk/AdSlot;)V

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/h;->a(Lcom/bytedance/sdk/openadsdk/component/reward/h;Lcom/bytedance/sdk/openadsdk/component/reward/h$a;)V

    :cond_2
    return-void

    .line 242
    :cond_3
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/e/i;->x()Z

    move-result v0

    if-nez v0, :cond_4

    .line 243
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/h$2;->d:Lcom/bytedance/sdk/openadsdk/component/reward/h;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/h;->a(Lcom/bytedance/sdk/openadsdk/component/reward/h;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/f;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/component/reward/f;

    move-result-object v0

    new-instance v2, Lcom/bytedance/sdk/openadsdk/component/reward/h$2$2;

    invoke-direct {v2, p0, p1, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/h$2$2;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/h$2;Lcom/bytedance/sdk/openadsdk/core/e/i;Lcom/bytedance/sdk/openadsdk/component/reward/k;)V

    invoke-virtual {v0, p1, v2}, Lcom/bytedance/sdk/openadsdk/component/reward/f;->a(Lcom/bytedance/sdk/openadsdk/core/e/i;Lcom/bytedance/sdk/openadsdk/component/reward/f$a;)V

    return-void

    .line 265
    :cond_4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/h$2;->d:Lcom/bytedance/sdk/openadsdk/component/reward/h;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/h;->a(Lcom/bytedance/sdk/openadsdk/component/reward/h;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/f;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/component/reward/f;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/h$2;->c:Lcom/bytedance/sdk/openadsdk/AdSlot;

    invoke-virtual {v0, v1, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/f;->a(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/e/i;)V

    return-void

    .line 269
    :cond_5
    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/h$2;->a:Z

    if-nez p1, :cond_6

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/h$2;->b:Lcom/bytedance/sdk/openadsdk/TTAdNative$RewardVideoAdListener;

    if-eqz p1, :cond_6

    const/4 v0, -0x3

    .line 270
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/f;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/TTAdNative$RewardVideoAdListener;->onError(ILjava/lang/String;)V

    :cond_6
    return-void
.end method

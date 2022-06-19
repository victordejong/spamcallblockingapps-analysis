.class Lcom/bytedance/sdk/openadsdk/component/reward/h$3;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/component/reward/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/component/reward/h;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/component/reward/h;)V
    .locals 0

    .line 327
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/h$3;->a:Lcom/bytedance/sdk/openadsdk/component/reward/h;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 330
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 331
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 332
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/h$3;->a:Lcom/bytedance/sdk/openadsdk/component/reward/h;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/h;->a(Lcom/bytedance/sdk/openadsdk/component/reward/h;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/utils/t;->c(Landroid/content/Context;)I

    move-result p1

    if-eqz p1, :cond_0

    .line 335
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/h$3;->a:Lcom/bytedance/sdk/openadsdk/component/reward/h;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/h;->b(Lcom/bytedance/sdk/openadsdk/component/reward/h;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 336
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 337
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/bytedance/sdk/openadsdk/component/reward/h$a;

    .line 338
    new-instance v0, Lcom/bytedance/sdk/openadsdk/component/reward/h$3$1;

    const-string v1, "Reward_downloadVideo"

    invoke-direct {v0, p0, v1, p2}, Lcom/bytedance/sdk/openadsdk/component/reward/h$3$1;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/h$3;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/component/reward/h$a;)V

    const/4 p2, 0x1

    invoke-static {v0, p2}, Lcom/bytedance/sdk/openadsdk/l/e;->a(Lcom/bytedance/sdk/openadsdk/l/g;I)V

    .line 344
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_0
    return-void
.end method

.class Lcom/bytedance/sdk/openadsdk/component/reward/h$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/component/reward/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field a:Lcom/bytedance/sdk/openadsdk/core/e/i;

.field b:Lcom/bytedance/sdk/openadsdk/AdSlot;

.field final synthetic c:Lcom/bytedance/sdk/openadsdk/component/reward/h;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/component/reward/h;Lcom/bytedance/sdk/openadsdk/core/e/i;Lcom/bytedance/sdk/openadsdk/AdSlot;)V
    .locals 0

    .line 361
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/h$a;->c:Lcom/bytedance/sdk/openadsdk/component/reward/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 362
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/h$a;->a:Lcom/bytedance/sdk/openadsdk/core/e/i;

    .line 363
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/h$a;->b:Lcom/bytedance/sdk/openadsdk/AdSlot;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 368
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/h$a;->c:Lcom/bytedance/sdk/openadsdk/component/reward/h;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/h;->a(Lcom/bytedance/sdk/openadsdk/component/reward/h;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/f;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/component/reward/f;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/h$a;->a:Lcom/bytedance/sdk/openadsdk/core/e/i;

    new-instance v2, Lcom/bytedance/sdk/openadsdk/component/reward/h$a$1;

    invoke-direct {v2, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/h$a$1;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/h$a;)V

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/component/reward/f;->a(Lcom/bytedance/sdk/openadsdk/core/e/i;Lcom/bytedance/sdk/openadsdk/component/reward/f$a;)V

    return-void
.end method

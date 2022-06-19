.class Lcom/bytedance/sdk/openadsdk/core/d/a$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/d/a;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/core/d/a;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/d/a;)V
    .locals 0

    .line 484
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/a$8;->a:Lcom/bytedance/sdk/openadsdk/core/d/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 487
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/a$8;->a:Lcom/bytedance/sdk/openadsdk/core/d/a;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/d/a;->k(Lcom/bytedance/sdk/openadsdk/core/d/a;)Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/a$8;->a:Lcom/bytedance/sdk/openadsdk/core/d/a;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/d/a;->l(Lcom/bytedance/sdk/openadsdk/core/d/a;)Lcom/bytedance/sdk/openadsdk/core/e/i;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/d/a$8;->a:Lcom/bytedance/sdk/openadsdk/core/d/a;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/d/a;->m(Lcom/bytedance/sdk/openadsdk/core/d/a;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/activity/TTWebsiteActivity;->a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/e/i;Ljava/lang/String;)V

    return-void
.end method

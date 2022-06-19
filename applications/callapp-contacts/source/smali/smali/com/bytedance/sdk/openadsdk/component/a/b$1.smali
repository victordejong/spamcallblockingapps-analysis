.class Lcom/bytedance/sdk/openadsdk/component/a/b$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/o$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/component/a/b;->a(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/component/a/b$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/component/a/b$a;

.field final synthetic b:Lcom/bytedance/sdk/openadsdk/component/a/b;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/component/a/b;Lcom/bytedance/sdk/openadsdk/component/a/b$a;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/a/b$1;->b:Lcom/bytedance/sdk/openadsdk/component/a/b;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/a/b$1;->a:Lcom/bytedance/sdk/openadsdk/component/a/b$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 1

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "  "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "BannerAdManager"

    invoke-static {p2, p1}, Lcom/bytedance/sdk/openadsdk/utils/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/a/b$1;->a:Lcom/bytedance/sdk/openadsdk/component/a/b$a;

    if-eqz p1, :cond_0

    .line 64
    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/component/a/b$a;->a()V

    :cond_0
    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/core/e/a;)V
    .locals 2

    .line 70
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/e/a;->b()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/e/a;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 71
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/e/a;->b()Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bytedance/sdk/openadsdk/core/e/i;

    .line 72
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/e/i;->ad()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/a/b$1;->b:Lcom/bytedance/sdk/openadsdk/component/a/b;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/a/b$1;->a:Lcom/bytedance/sdk/openadsdk/component/a/b$a;

    invoke-static {v0, p1, v1}, Lcom/bytedance/sdk/openadsdk/component/a/b;->a(Lcom/bytedance/sdk/openadsdk/component/a/b;Lcom/bytedance/sdk/openadsdk/core/e/i;Lcom/bytedance/sdk/openadsdk/component/a/b$a;)V

    return-void

    :cond_0
    const-string p1, "BannerAdManager"

    const-string v0, "Banner\u5e7f\u544a\u89e3\u6790\u5931\u8d25/\u5e7f\u544a\u4e3a\u7a7a"

    .line 75
    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/utils/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/a/b$1;->a:Lcom/bytedance/sdk/openadsdk/component/a/b$a;

    if-eqz p1, :cond_1

    .line 77
    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/component/a/b$a;->a()V

    :cond_1
    return-void
.end method

.class Lcom/bytedance/sdk/openadsdk/i/a$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/i/a;->d(Lcom/bytedance/sdk/openadsdk/i/a/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/i/a/b;

.field final synthetic b:Lcom/bytedance/sdk/openadsdk/i/a;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/i/a;Lcom/bytedance/sdk/openadsdk/i/a/b;)V
    .locals 0

    .line 171
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/i/a$2;->b:Lcom/bytedance/sdk/openadsdk/i/a;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/i/a$2;->a:Lcom/bytedance/sdk/openadsdk/i/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 174
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/i/a$2;->b:Lcom/bytedance/sdk/openadsdk/i/a;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/i/a$2;->a:Lcom/bytedance/sdk/openadsdk/i/a/b;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/i/a;->a(Lcom/bytedance/sdk/openadsdk/i/a;Lcom/bytedance/sdk/openadsdk/i/a/b;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/i/a$2;->b:Lcom/bytedance/sdk/openadsdk/i/a;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/i/a$2;->a:Lcom/bytedance/sdk/openadsdk/i/a/b;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/i/a/b;->e()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/i/a;->a(Lcom/bytedance/sdk/openadsdk/i/a;Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/i/a$2;->a:Lcom/bytedance/sdk/openadsdk/i/a/b;

    const-string v1, "no_reg_creative"

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/i/a/b;->a(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/i/a/b;

    .line 178
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->i()Lcom/bytedance/sdk/openadsdk/i/b/a;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/i/a$2;->a:Lcom/bytedance/sdk/openadsdk/i/a/b;

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/i/b/a;->a(Lcom/bytedance/sdk/openadsdk/i/a/a;)V

    :cond_1
    :goto_0
    return-void
.end method

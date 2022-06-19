.class Lcom/bytedance/sdk/openadsdk/j/a/c$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/j/a/c;->b(Lcom/bytedance/sdk/adnet/core/i;)Lcom/bytedance/sdk/adnet/core/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:[B

.field final synthetic b:Lcom/bytedance/sdk/openadsdk/j/a/c;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/j/a/c;[B)V
    .locals 0

    .line 209
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/j/a/c$1;->b:Lcom/bytedance/sdk/openadsdk/j/a/c;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/j/a/c$1;->a:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 212
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/j/a/c$1;->b:Lcom/bytedance/sdk/openadsdk/j/a/c;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/j/a/c;->a(Lcom/bytedance/sdk/openadsdk/j/a/c;)Lcom/bytedance/sdk/openadsdk/j/a/c$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/j/a/c$1;->b:Lcom/bytedance/sdk/openadsdk/j/a/c;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/j/a/c;->a(Lcom/bytedance/sdk/openadsdk/j/a/c;)Lcom/bytedance/sdk/openadsdk/j/a/c$a;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/j/a/c$1;->b:Lcom/bytedance/sdk/openadsdk/j/a/c;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/j/a/c;->getUrl()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/j/a/c$1;->a:[B

    invoke-interface {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/j/a/c$a;->a(Ljava/lang/String;[B)V

    :cond_0
    return-void
.end method

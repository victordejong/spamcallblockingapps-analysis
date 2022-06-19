.class Lcom/bytedance/sdk/openadsdk/k/a/c$3$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/k/a/c$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/k/a/c$3;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/k/a/c$3;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/k/a/c$3$1;->a:Lcom/bytedance/sdk/openadsdk/k/a/c$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 73
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/k/a/c$3$1;->a:Lcom/bytedance/sdk/openadsdk/k/a/c$3;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/k/a/c$3;->a:Lcom/bytedance/sdk/openadsdk/k/a/c;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/k/a/c$3$1;->a:Lcom/bytedance/sdk/openadsdk/k/a/c$3;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/k/a/c$3;->a:Lcom/bytedance/sdk/openadsdk/k/a/c;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/k/a/c;->a(Lcom/bytedance/sdk/openadsdk/k/a/c;)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/k/a/c;->a(Lcom/bytedance/sdk/openadsdk/k/a/c;J)V

    return-void
.end method

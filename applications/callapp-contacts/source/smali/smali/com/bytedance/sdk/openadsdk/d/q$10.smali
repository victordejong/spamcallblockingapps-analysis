.class Lcom/bytedance/sdk/openadsdk/d/q$10;
.super Lcom/bytedance/sdk/openadsdk/l/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/d/q;->a(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/bytedance/sdk/openadsdk/d/q;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/d/q;Ljava/lang/String;I)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/d/q$10;->b:Lcom/bytedance/sdk/openadsdk/d/q;

    iput p3, p0, Lcom/bytedance/sdk/openadsdk/d/q$10;->a:I

    invoke-direct {p0, p2}, Lcom/bytedance/sdk/openadsdk/l/g;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 88
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/d/q$10;->b:Lcom/bytedance/sdk/openadsdk/d/q;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/d/q;->a(Lcom/bytedance/sdk/openadsdk/d/q;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 89
    :try_start_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/d/q$10;->b:Lcom/bytedance/sdk/openadsdk/d/q;

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/d/q$10;->a:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/d/q;->a(ILjava/lang/String;)V

    .line 90
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

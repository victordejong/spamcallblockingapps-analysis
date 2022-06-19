.class Lcom/bytedance/sdk/openadsdk/core/h/c$a;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/core/h/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/core/h/c;


# direct methods
.method private constructor <init>(Lcom/bytedance/sdk/openadsdk/core/h/c;)V
    .locals 0

    .line 118
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/h/c$a;->a:Lcom/bytedance/sdk/openadsdk/core/h/c;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/bytedance/sdk/openadsdk/core/h/c;Lcom/bytedance/sdk/openadsdk/core/h/c$1;)V
    .locals 0

    .line 118
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/h/c$a;-><init>(Lcom/bytedance/sdk/openadsdk/core/h/c;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    if-nez p2, :cond_0

    return-void

    :cond_0
    const/4 p1, -0x1

    const-string v0, "b_msg_id"

    .line 126
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    const-wide/16 v0, -0x1

    const-string p1, "b_msg_time"

    .line 128
    invoke-virtual {p2, p1, v0, v1}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide p1

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_1

    .line 130
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/h/c;->c()Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    :cond_1
    return-void

    :cond_2
    const/4 p2, 0x2

    if-ne p1, p2, :cond_3

    .line 137
    :try_start_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/h/c$a;->a:Lcom/bytedance/sdk/openadsdk/core/h/c;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/h/c;->a(Lcom/bytedance/sdk/openadsdk/core/h/c;)Lcom/bytedance/sdk/openadsdk/core/h/b;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 138
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/h/c$a;->a:Lcom/bytedance/sdk/openadsdk/core/h/c;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/h/c;->a(Lcom/bytedance/sdk/openadsdk/core/h/c;)Lcom/bytedance/sdk/openadsdk/core/h/b;

    move-result-object p1

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/core/h/b;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_3
    return-void
.end method

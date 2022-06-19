.class Lcom/bytedance/sdk/openadsdk/d/h$c;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/d/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/d/h;


# direct methods
.method private constructor <init>(Lcom/bytedance/sdk/openadsdk/d/h;)V
    .locals 0

    .line 520
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/d/h$c;->a:Lcom/bytedance/sdk/openadsdk/d/h;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/bytedance/sdk/openadsdk/d/h;Lcom/bytedance/sdk/openadsdk/d/h$1;)V
    .locals 0

    .line 520
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/d/h$c;-><init>(Lcom/bytedance/sdk/openadsdk/d/h;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 524
    sget-object p1, Lcom/bytedance/sdk/openadsdk/d/h;->a:Ljava/lang/String;

    const-string p2, "onReceive: timer event"

    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/utils/q;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 525
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/d/h$c;->a:Lcom/bytedance/sdk/openadsdk/d/h;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/d/h;->i:Landroid/os/Handler;

    if-nez p1, :cond_0

    return-void

    .line 528
    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/d/h$c;->a:Lcom/bytedance/sdk/openadsdk/d/h;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/d/h;->i:Landroid/os/Handler;

    const/4 p2, 0x6

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 529
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/d/h$c;->a:Lcom/bytedance/sdk/openadsdk/d/h;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/d/h;->i:Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p1

    .line 530
    iput p2, p1, Landroid/os/Message;->what:I

    .line 531
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/d/h$c;->a:Lcom/bytedance/sdk/openadsdk/d/h;

    iget-object p2, p2, Lcom/bytedance/sdk/openadsdk/d/h;->i:Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

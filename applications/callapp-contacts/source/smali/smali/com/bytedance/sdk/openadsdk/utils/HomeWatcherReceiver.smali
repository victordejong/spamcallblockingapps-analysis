.class public Lcom/bytedance/sdk/openadsdk/utils/HomeWatcherReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/utils/HomeWatcherReceiver$a;
    }
.end annotation


# instance fields
.field private a:Lcom/bytedance/sdk/openadsdk/utils/HomeWatcherReceiver$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/bytedance/sdk/openadsdk/utils/HomeWatcherReceiver$a;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/utils/HomeWatcherReceiver;->a:Lcom/bytedance/sdk/openadsdk/utils/HomeWatcherReceiver$a;

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    if-nez p2, :cond_0

    return-void

    .line 25
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    .line 27
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "reason"

    .line 29
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "homekey"

    .line 32
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 35
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/utils/HomeWatcherReceiver;->a:Lcom/bytedance/sdk/openadsdk/utils/HomeWatcherReceiver$a;

    if-eqz p1, :cond_3

    .line 36
    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/utils/HomeWatcherReceiver$a;->H()V

    return-void

    :cond_1
    const-string p2, "recentapps"

    .line 38
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 41
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/utils/HomeWatcherReceiver;->a:Lcom/bytedance/sdk/openadsdk/utils/HomeWatcherReceiver$a;

    if-eqz p1, :cond_3

    .line 42
    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/utils/HomeWatcherReceiver$a;->I()V

    return-void

    :cond_2
    const-string p2, "assist"

    .line 44
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    :cond_3
    return-void
.end method

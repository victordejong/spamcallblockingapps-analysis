.class Lcom/callapp/contacts/receiver/ScreenOffReceiver$ScreenOffReceiverTask;
.super Lcom/callapp/contacts/manager/task/Task;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/receiver/ScreenOffReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ScreenOffReceiverTask"
.end annotation


# instance fields
.field private final a:Landroid/content/BroadcastReceiver$PendingResult;

.field private final b:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Landroid/content/BroadcastReceiver$PendingResult;Landroid/content/Intent;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/callapp/contacts/manager/task/Task;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/callapp/contacts/receiver/ScreenOffReceiver$ScreenOffReceiverTask;->a:Landroid/content/BroadcastReceiver$PendingResult;

    .line 42
    iput-object p2, p0, Lcom/callapp/contacts/receiver/ScreenOffReceiver$ScreenOffReceiverTask;->b:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public doTask()V
    .locals 5

    .line 48
    :try_start_0
    const-class v0, Lcom/callapp/contacts/receiver/ScreenOffReceiver;

    const-string v1, "ScreenOffReceiver.onReceive called with ACTION = [%s],"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/callapp/contacts/receiver/ScreenOffReceiver$ScreenOffReceiverTask;->b:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "android.intent.action.SCREEN_OFF"

    .line 49
    iget-object v1, p0, Lcom/callapp/contacts/receiver/ScreenOffReceiver$ScreenOffReceiverTask;->b:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    const-class v1, Lcom/callapp/contacts/service/jobs/ScreenOffServiceV1;

    const v2, -0x4bfaf

    iget-object v3, p0, Lcom/callapp/contacts/receiver/ScreenOffReceiver$ScreenOffReceiverTask;->b:Landroid/content/Intent;

    invoke-static {v0, v1, v2, v3}, Landroidx/core/app/JobIntentService;->a(Landroid/content/Context;Ljava/lang/Class;ILandroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/receiver/ScreenOffReceiver$ScreenOffReceiverTask;->a:Landroid/content/BroadcastReceiver$PendingResult;

    invoke-virtual {v0}, Landroid/content/BroadcastReceiver$PendingResult;->finish()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/callapp/contacts/receiver/ScreenOffReceiver$ScreenOffReceiverTask;->a:Landroid/content/BroadcastReceiver$PendingResult;

    invoke-virtual {v1}, Landroid/content/BroadcastReceiver$PendingResult;->finish()V

    .line 54
    throw v0
.end method

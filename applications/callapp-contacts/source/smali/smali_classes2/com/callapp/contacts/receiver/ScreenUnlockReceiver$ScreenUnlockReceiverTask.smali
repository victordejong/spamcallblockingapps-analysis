.class Lcom/callapp/contacts/receiver/ScreenUnlockReceiver$ScreenUnlockReceiverTask;
.super Lcom/callapp/contacts/manager/task/Task;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/receiver/ScreenUnlockReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ScreenUnlockReceiverTask"
.end annotation


# instance fields
.field private final a:Landroid/content/BroadcastReceiver$PendingResult;

.field private final b:Landroid/content/Intent;

.field private final c:Lcom/callapp/contacts/receiver/ScreenUnlockReceiver;


# direct methods
.method public constructor <init>(Landroid/content/BroadcastReceiver$PendingResult;Landroid/content/Intent;Lcom/callapp/contacts/receiver/ScreenUnlockReceiver;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/callapp/contacts/manager/task/Task;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/callapp/contacts/receiver/ScreenUnlockReceiver$ScreenUnlockReceiverTask;->a:Landroid/content/BroadcastReceiver$PendingResult;

    .line 42
    iput-object p2, p0, Lcom/callapp/contacts/receiver/ScreenUnlockReceiver$ScreenUnlockReceiverTask;->b:Landroid/content/Intent;

    .line 43
    iput-object p3, p0, Lcom/callapp/contacts/receiver/ScreenUnlockReceiver$ScreenUnlockReceiverTask;->c:Lcom/callapp/contacts/receiver/ScreenUnlockReceiver;

    return-void
.end method


# virtual methods
.method public doTask()V
    .locals 4

    .line 49
    :try_start_0
    iget-object v0, p0, Lcom/callapp/contacts/receiver/ScreenUnlockReceiver$ScreenUnlockReceiverTask;->b:Landroid/content/Intent;

    if-eqz v0, :cond_0

    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    const-class v1, Lcom/callapp/contacts/service/jobs/ScreenUnlockServiceV1;

    const v2, -0x4bfb0

    iget-object v3, p0, Lcom/callapp/contacts/receiver/ScreenUnlockReceiver$ScreenUnlockReceiverTask;->b:Landroid/content/Intent;

    invoke-static {v0, v1, v2, v3}, Landroidx/core/app/JobIntentService;->a(Landroid/content/Context;Ljava/lang/Class;ILandroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    :try_start_1
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/receiver/ScreenUnlockReceiver$ScreenUnlockReceiverTask;->c:Lcom/callapp/contacts/receiver/ScreenUnlockReceiver;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/CallAppApplication;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 55
    :catch_0
    :try_start_2
    invoke-static {}, Lcom/callapp/contacts/receiver/ScreenUnlockReceiver;->b()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/receiver/ScreenUnlockReceiver$ScreenUnlockReceiverTask;->a:Landroid/content/BroadcastReceiver$PendingResult;

    invoke-virtual {v0}, Landroid/content/BroadcastReceiver$PendingResult;->finish()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/callapp/contacts/receiver/ScreenUnlockReceiver$ScreenUnlockReceiverTask;->a:Landroid/content/BroadcastReceiver$PendingResult;

    invoke-virtual {v1}, Landroid/content/BroadcastReceiver$PendingResult;->finish()V

    .line 59
    throw v0
.end method

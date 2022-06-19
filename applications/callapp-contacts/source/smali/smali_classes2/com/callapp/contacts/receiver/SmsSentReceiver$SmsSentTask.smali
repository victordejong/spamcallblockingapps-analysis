.class Lcom/callapp/contacts/receiver/SmsSentReceiver$SmsSentTask;
.super Lcom/callapp/contacts/manager/task/Task;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/receiver/SmsSentReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SmsSentTask"
.end annotation


# instance fields
.field private final a:Landroid/content/BroadcastReceiver$PendingResult;

.field private final b:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Landroid/content/BroadcastReceiver$PendingResult;Landroid/content/Intent;)V
    .locals 0

    .line 62
    invoke-direct {p0}, Lcom/callapp/contacts/manager/task/Task;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/callapp/contacts/receiver/SmsSentReceiver$SmsSentTask;->a:Landroid/content/BroadcastReceiver$PendingResult;

    .line 64
    iput-object p2, p0, Lcom/callapp/contacts/receiver/SmsSentReceiver$SmsSentTask;->b:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public doTask()V
    .locals 4

    .line 70
    :try_start_0
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    const-class v1, Lcom/callapp/contacts/service/jobs/SmsReceivedServiceV1;

    const v2, -0x4bfb2

    iget-object v3, p0, Lcom/callapp/contacts/receiver/SmsSentReceiver$SmsSentTask;->b:Landroid/content/Intent;

    invoke-static {v0, v1, v2, v3}, Landroidx/core/app/JobIntentService;->a(Landroid/content/Context;Ljava/lang/Class;ILandroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    iget-object v0, p0, Lcom/callapp/contacts/receiver/SmsSentReceiver$SmsSentTask;->a:Landroid/content/BroadcastReceiver$PendingResult;

    invoke-virtual {v0}, Landroid/content/BroadcastReceiver$PendingResult;->finish()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/callapp/contacts/receiver/SmsSentReceiver$SmsSentTask;->a:Landroid/content/BroadcastReceiver$PendingResult;

    invoke-virtual {v1}, Landroid/content/BroadcastReceiver$PendingResult;->finish()V

    .line 73
    throw v0
.end method

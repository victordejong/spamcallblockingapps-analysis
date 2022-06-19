.class Lcom/callapp/contacts/receiver/SimChangedReceiver$SimChangedTask;
.super Lcom/callapp/contacts/manager/task/Task;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/receiver/SimChangedReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SimChangedTask"
.end annotation


# instance fields
.field private final a:Landroid/content/BroadcastReceiver$PendingResult;

.field private final b:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Landroid/content/BroadcastReceiver$PendingResult;Landroid/content/Intent;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/callapp/contacts/manager/task/Task;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/callapp/contacts/receiver/SimChangedReceiver$SimChangedTask;->a:Landroid/content/BroadcastReceiver$PendingResult;

    .line 29
    iput-object p2, p0, Lcom/callapp/contacts/receiver/SimChangedReceiver$SimChangedTask;->b:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public doTask()V
    .locals 4

    .line 35
    :try_start_0
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    const-class v1, Lcom/callapp/contacts/service/jobs/SimChangedServiceV1;

    const v2, -0x4bfb1

    iget-object v3, p0, Lcom/callapp/contacts/receiver/SimChangedReceiver$SimChangedTask;->b:Landroid/content/Intent;

    invoke-static {v0, v1, v2, v3}, Landroidx/core/app/JobIntentService;->a(Landroid/content/Context;Ljava/lang/Class;ILandroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    iget-object v0, p0, Lcom/callapp/contacts/receiver/SimChangedReceiver$SimChangedTask;->a:Landroid/content/BroadcastReceiver$PendingResult;

    invoke-virtual {v0}, Landroid/content/BroadcastReceiver$PendingResult;->finish()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/callapp/contacts/receiver/SimChangedReceiver$SimChangedTask;->a:Landroid/content/BroadcastReceiver$PendingResult;

    invoke-virtual {v1}, Landroid/content/BroadcastReceiver$PendingResult;->finish()V

    .line 38
    throw v0
.end method

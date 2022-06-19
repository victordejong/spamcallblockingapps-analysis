.class public Lcom/callapp/contacts/receiver/HeadsetReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/receiver/HeadsetReceiver$HeadsetTask;
    }
.end annotation


# static fields
.field private static a:Landroid/os/HandlerThread;

.field private static b:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static a()V
    .locals 5

    .line 24
    new-instance v0, Landroid/os/HandlerThread;

    const-class v1, Lcom/callapp/contacts/receiver/HeadsetReceiver;

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 25
    sput-object v0, Lcom/callapp/contacts/receiver/HeadsetReceiver;->a:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 26
    sget-object v0, Lcom/callapp/contacts/receiver/HeadsetReceiver;->a:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {v0}, Lcom/callapp/contacts/util/AndroidUtils;->a(Landroid/os/Looper;)V

    .line 27
    new-instance v0, Landroid/os/Handler;

    sget-object v1, Lcom/callapp/contacts/receiver/HeadsetReceiver;->a:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/callapp/contacts/receiver/HeadsetReceiver;->b:Landroid/os/Handler;

    .line 29
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.HEADSET_PLUG"

    .line 30
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 31
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v1

    new-instance v2, Lcom/callapp/contacts/receiver/HeadsetReceiver;

    invoke-direct {v2}, Lcom/callapp/contacts/receiver/HeadsetReceiver;-><init>()V

    sget-object v3, Lcom/callapp/contacts/receiver/HeadsetReceiver;->b:Landroid/os/Handler;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v4, v3}, Lcom/callapp/contacts/CallAppApplication;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 36
    invoke-virtual {p0}, Lcom/callapp/contacts/receiver/HeadsetReceiver;->goAsync()Landroid/content/BroadcastReceiver$PendingResult;

    move-result-object p1

    .line 37
    new-instance v0, Lcom/callapp/contacts/receiver/HeadsetReceiver$HeadsetTask;

    invoke-direct {v0, p1, p2}, Lcom/callapp/contacts/receiver/HeadsetReceiver$HeadsetTask;-><init>(Landroid/content/BroadcastReceiver$PendingResult;Landroid/content/Intent;)V

    invoke-virtual {v0}, Lcom/callapp/contacts/receiver/HeadsetReceiver$HeadsetTask;->execute()Lcom/callapp/contacts/manager/task/Task;

    return-void
.end method

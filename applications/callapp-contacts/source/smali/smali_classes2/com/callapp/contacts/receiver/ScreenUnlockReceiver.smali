.class public Lcom/callapp/contacts/receiver/ScreenUnlockReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/receiver/ScreenUnlockReceiver$ScreenUnlockReceiverTask;
    }
.end annotation


# static fields
.field private static a:Landroid/os/HandlerThread;

.field private static b:Landroid/os/Handler;

.field private static c:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 25
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/callapp/contacts/receiver/ScreenUnlockReceiver;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static a()V
    .locals 5

    .line 64
    sget-object v0, Lcom/callapp/contacts/receiver/ScreenUnlockReceiver;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 65
    sget-object v0, Lcom/callapp/contacts/receiver/ScreenUnlockReceiver;->a:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    .line 66
    new-instance v0, Landroid/os/HandlerThread;

    const-class v1, Lcom/callapp/contacts/receiver/BluetoothReceiver;

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 67
    sput-object v0, Lcom/callapp/contacts/receiver/ScreenUnlockReceiver;->a:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 68
    sget-object v0, Lcom/callapp/contacts/receiver/ScreenUnlockReceiver;->a:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {v0}, Lcom/callapp/contacts/util/AndroidUtils;->a(Landroid/os/Looper;)V

    .line 69
    new-instance v0, Landroid/os/Handler;

    sget-object v1, Lcom/callapp/contacts/receiver/ScreenUnlockReceiver;->a:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/callapp/contacts/receiver/ScreenUnlockReceiver;->b:Landroid/os/Handler;

    .line 72
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.USER_PRESENT"

    .line 73
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 74
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v1

    new-instance v2, Lcom/callapp/contacts/receiver/ScreenUnlockReceiver;

    invoke-direct {v2}, Lcom/callapp/contacts/receiver/ScreenUnlockReceiver;-><init>()V

    const/4 v3, 0x0

    sget-object v4, Lcom/callapp/contacts/receiver/ScreenUnlockReceiver;->b:Landroid/os/Handler;

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/callapp/contacts/CallAppApplication;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    :cond_1
    return-void
.end method

.method static synthetic b()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .line 21
    sget-object v0, Lcom/callapp/contacts/receiver/ScreenUnlockReceiver;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    if-eqz p2, :cond_0

    .line 30
    invoke-virtual {p0}, Lcom/callapp/contacts/receiver/ScreenUnlockReceiver;->goAsync()Landroid/content/BroadcastReceiver$PendingResult;

    move-result-object p1

    .line 31
    new-instance v0, Lcom/callapp/contacts/receiver/ScreenUnlockReceiver$ScreenUnlockReceiverTask;

    invoke-direct {v0, p1, p2, p0}, Lcom/callapp/contacts/receiver/ScreenUnlockReceiver$ScreenUnlockReceiverTask;-><init>(Landroid/content/BroadcastReceiver$PendingResult;Landroid/content/Intent;Lcom/callapp/contacts/receiver/ScreenUnlockReceiver;)V

    invoke-virtual {v0}, Lcom/callapp/contacts/receiver/ScreenUnlockReceiver$ScreenUnlockReceiverTask;->execute()Lcom/callapp/contacts/manager/task/Task;

    :cond_0
    return-void
.end method

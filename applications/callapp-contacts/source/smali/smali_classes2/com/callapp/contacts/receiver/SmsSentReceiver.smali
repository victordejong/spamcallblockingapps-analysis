.class public Lcom/callapp/contacts/receiver/SmsSentReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/receiver/SmsSentReceiver$SmsSentTask;
    }
.end annotation


# static fields
.field private static a:Landroid/os/HandlerThread;

.field private static b:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static a()V
    .locals 5

    .line 38
    new-instance v0, Landroid/os/HandlerThread;

    const-class v1, Lcom/callapp/contacts/receiver/SmsSentReceiver;

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 39
    sput-object v0, Lcom/callapp/contacts/receiver/SmsSentReceiver;->a:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 40
    sget-object v0, Lcom/callapp/contacts/receiver/SmsSentReceiver;->a:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {v0}, Lcom/callapp/contacts/util/AndroidUtils;->a(Landroid/os/Looper;)V

    .line 41
    new-instance v0, Landroid/os/Handler;

    sget-object v1, Lcom/callapp/contacts/receiver/SmsSentReceiver;->a:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/callapp/contacts/receiver/SmsSentReceiver;->b:Landroid/os/Handler;

    .line 43
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.callapp.contacts.receiver.SMS_SENT"

    .line 44
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const v1, 0x7ffffffe

    .line 45
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 47
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v1

    new-instance v2, Lcom/callapp/contacts/receiver/SmsSentReceiver;

    invoke-direct {v2}, Lcom/callapp/contacts/receiver/SmsSentReceiver;-><init>()V

    sget-object v3, Lcom/callapp/contacts/receiver/SmsSentReceiver;->b:Landroid/os/Handler;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v4, v3}, Lcom/callapp/contacts/CallAppApplication;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method public static b()V
    .locals 4

    .line 78
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/CallAppApplication;->getObjectBoxStore()Lio/objectbox/BoxStore;

    move-result-object v0

    const-class v1, Lcom/callapp/contacts/model/objectbox/SingleSmsData;

    invoke-virtual {v0, v1}, Lio/objectbox/BoxStore;->d(Ljava/lang/Class;)Lio/objectbox/a;

    move-result-object v0

    .line 79
    invoke-virtual {v0}, Lio/objectbox/a;->e()Lio/objectbox/query/QueryBuilder;

    move-result-object v1

    sget-object v2, Lcom/callapp/contacts/model/objectbox/SingleSmsData_;->id:Lio/objectbox/g;

    const/4 v3, 0x0

    .line 1272
    invoke-virtual {v1, v2, v3}, Lio/objectbox/query/QueryBuilder;->a(Lio/objectbox/g;I)Lio/objectbox/query/QueryBuilder;

    move-result-object v1

    .line 79
    invoke-virtual {v1}, Lio/objectbox/query/QueryBuilder;->a()Lio/objectbox/query/Query;

    move-result-object v1

    invoke-virtual {v1}, Lio/objectbox/query/Query;->c()Ljava/util/List;

    move-result-object v1

    .line 80
    invoke-static {v1}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    .line 83
    :cond_0
    invoke-virtual {v0}, Lio/objectbox/a;->d()V

    .line 85
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    new-instance v2, Lcom/callapp/contacts/receiver/SmsSentReceiver$1;

    invoke-direct {v2, v1}, Lcom/callapp/contacts/receiver/SmsSentReceiver$1;-><init>(Ljava/util/List;)V

    invoke-virtual {v0, v2}, Lcom/callapp/contacts/CallAppApplication;->d(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 52
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callapp/contacts/manager/phone/PhoneManager;->isInDriveMode()Z

    move-result p1

    if-nez p1, :cond_0

    .line 53
    invoke-virtual {p0}, Lcom/callapp/contacts/receiver/SmsSentReceiver;->goAsync()Landroid/content/BroadcastReceiver$PendingResult;

    move-result-object p1

    .line 54
    new-instance v0, Lcom/callapp/contacts/receiver/SmsSentReceiver$SmsSentTask;

    invoke-direct {v0, p1, p2}, Lcom/callapp/contacts/receiver/SmsSentReceiver$SmsSentTask;-><init>(Landroid/content/BroadcastReceiver$PendingResult;Landroid/content/Intent;)V

    invoke-virtual {v0}, Lcom/callapp/contacts/receiver/SmsSentReceiver$SmsSentTask;->execute()Lcom/callapp/contacts/manager/task/Task;

    :cond_0
    return-void
.end method

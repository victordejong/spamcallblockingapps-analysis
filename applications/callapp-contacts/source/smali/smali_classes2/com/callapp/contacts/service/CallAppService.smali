.class public Lcom/callapp/contacts/service/CallAppService;
.super Landroid/app/Service;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/service/CallAppService$LocalCallAppServiceBinder;
    }
.end annotation


# instance fields
.field private a:Lcom/callapp/contacts/recorder/service/RecordService;

.field private final b:Landroid/os/IBinder;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 45
    new-instance v0, Lcom/callapp/contacts/service/CallAppService$LocalCallAppServiceBinder;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/service/CallAppService$LocalCallAppServiceBinder;-><init>(Lcom/callapp/contacts/service/CallAppService;)V

    iput-object v0, p0, Lcom/callapp/contacts/service/CallAppService;->b:Landroid/os/IBinder;

    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/content/Intent;Z)V
    .locals 0

    if-eqz p2, :cond_0

    .line 65
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object p0

    const/4 p2, 0x1

    invoke-virtual {p0, p2, p1}, Lcom/callapp/contacts/CallAppApplication;->a(ZLandroid/content/Intent;)V

    return-void

    .line 67
    :cond_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method


# virtual methods
.method final a()V
    .locals 2

    .line 197
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/phone/PhoneManager;->isDefaultPhoneApp()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 198
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 199
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/service/CallAppService;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    .line 60
    iget-object p1, p0, Lcom/callapp/contacts/service/CallAppService;->b:Landroid/os/IBinder;

    return-object p1
.end method

.method public onCreate()V
    .locals 1

    .line 73
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 75
    invoke-static {}, Lcom/callapp/contacts/manager/CallAppClipboardManager;->get()Lcom/callapp/contacts/manager/CallAppClipboardManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/CallAppClipboardManager;->init()V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 214
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 216
    const-class v0, Lcom/callapp/contacts/service/CallAppService;

    const-string v1, "CallAppService onDestroy()"

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 218
    invoke-static {}, Lcom/callapp/contacts/manager/CallAppClipboardManager;->get()Lcom/callapp/contacts/manager/CallAppClipboardManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/CallAppClipboardManager;->destroy()V

    .line 221
    invoke-static {}, Lcom/callapp/contacts/manager/Singletons;->get()Lcom/callapp/contacts/manager/Singletons;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/Singletons;->getNotificationManager()Lcom/callapp/contacts/manager/NotificationManager;

    move-result-object v0

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/NotificationManager;->a(I)V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 7

    .line 102
    const-class p2, Lcom/callapp/contacts/service/CallAppService;

    const/4 p3, 0x1

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 103
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    new-array v1, p3, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const-string v3, "onStartCommand action=%s"

    .line 104
    invoke-static {p2, v3, v1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v1, "com.callapp.contacts.ACTION_START_CALL_NOTIFICATION"

    .line 106
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x0

    const/16 v4, 0xc

    if-nez v1, :cond_5

    const-string v1, "com.callapp.contacts.ACTION_START_CALL_SCREEN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_1

    :cond_0
    const-string v1, "com.callapp.contacts.ACTION_CALL_RECORDING"

    .line 129
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "EXTRA_RECORDER_COMMAND_TYPE"

    .line 130
    invoke-virtual {p1, v0, p3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 131
    new-instance v1, Lcom/callapp/contacts/service/CallAppService$1;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/service/CallAppService$1;-><init>(Lcom/callapp/contacts/service/CallAppService;)V

    if-eqz v0, :cond_3

    if-eq v0, p3, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_3

    const/4 p2, 0x3

    if-eq v0, p2, :cond_1

    goto/16 :goto_4

    .line 165
    :cond_1
    iget-object p2, p0, Lcom/callapp/contacts/service/CallAppService;->a:Lcom/callapp/contacts/recorder/service/RecordService;

    if-eqz p2, :cond_2

    .line 166
    invoke-virtual {p2, p1, v1}, Lcom/callapp/contacts/recorder/service/RecordService;->start(Landroid/content/Intent;Lcom/callapp/contacts/recorder/service/RecordService$RecordServiceIntentEvents;)V

    .line 167
    iput-object v3, p0, Lcom/callapp/contacts/service/CallAppService;->a:Lcom/callapp/contacts/recorder/service/RecordService;

    goto/16 :goto_4

    .line 169
    :cond_2
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 170
    sget-object v0, Lcom/callapp/contacts/recorder/CallRecorderManager$RecordingState;->IDLE:Lcom/callapp/contacts/recorder/CallRecorderManager$RecordingState;

    invoke-virtual {v0}, Lcom/callapp/contacts/recorder/CallRecorderManager$RecordingState;->ordinal()I

    move-result v0

    const-string v1, "RECORDER_STATE"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 171
    invoke-static {}, Lcom/callapp/contacts/recorder/CallRecorderManager;->get()Lcom/callapp/contacts/recorder/CallRecorderManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/callapp/contacts/recorder/CallRecorderManager;->a(Landroid/os/Bundle;)V

    goto/16 :goto_4

    .line 148
    :cond_3
    iget-object v0, p0, Lcom/callapp/contacts/service/CallAppService;->a:Lcom/callapp/contacts/recorder/service/RecordService;

    if-nez v0, :cond_9

    .line 152
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/phone/PhoneManager;->isDefaultPhoneApp()Z

    move-result v0

    if-nez v0, :cond_4

    .line 154
    :try_start_0
    invoke-static {}, Lcom/callapp/contacts/manager/NotificationManager;->get()Lcom/callapp/contacts/manager/NotificationManager;

    move-result-object v0

    invoke-static {}, Lcom/callapp/contacts/manager/NotificationManager;->get()Lcom/callapp/contacts/manager/NotificationManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/callapp/contacts/manager/NotificationManager;->getCurrentCallAppInCallNotificationBuilder()Landroidx/core/app/g$e;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/core/app/g$e;->b()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v0, v4, v2}, Lcom/callapp/contacts/manager/NotificationManager;->a(ILandroid/app/Notification;)Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 156
    invoke-static {p2, v0}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/Throwable;)V

    .line 159
    :cond_4
    :goto_0
    new-instance p2, Lcom/callapp/contacts/recorder/service/RecordService;

    invoke-direct {p2}, Lcom/callapp/contacts/recorder/service/RecordService;-><init>()V

    iput-object p2, p0, Lcom/callapp/contacts/service/CallAppService;->a:Lcom/callapp/contacts/recorder/service/RecordService;

    .line 160
    invoke-virtual {p2, p1, v1}, Lcom/callapp/contacts/recorder/service/RecordService;->start(Landroid/content/Intent;Lcom/callapp/contacts/recorder/service/RecordService$RecordServiceIntentEvents;)V

    goto/16 :goto_4

    .line 107
    :cond_5
    :goto_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_6

    const-string v0, "start_foreground"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 108
    invoke-static {}, Lcom/callapp/contacts/manager/NotificationManager;->get()Lcom/callapp/contacts/manager/NotificationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/NotificationManager;->getCurrentCallAppInCallNotificationBuilder()Landroidx/core/app/g$e;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/core/app/g$e;->b()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {p0, v4, v0}, Lcom/callapp/contacts/service/CallAppService;->startForeground(ILandroid/app/Notification;)V

    :cond_6
    const-string v0, "phone"

    .line 111
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 112
    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v5, ""

    if-eqz v1, :cond_7

    move-object v0, v5

    :cond_7
    const-string v1, "isIncoming"

    .line 115
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 117
    :try_start_1
    invoke-virtual {p0}, Lcom/callapp/contacts/service/CallAppService;->a()V

    .line 118
    invoke-static {}, Lcom/callapp/contacts/manager/NotificationManager;->get()Lcom/callapp/contacts/manager/NotificationManager;

    move-result-object v6

    if-eqz v1, :cond_8

    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/callapp/contacts/manager/phone/PhoneManager;->isDefaultPhoneApp()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 119
    invoke-static {}, Lcom/callapp/contacts/manager/NotificationManager;->get()Lcom/callapp/contacts/manager/NotificationManager;

    move-result-object v1

    invoke-virtual {v1, v0, v5, v2}, Lcom/callapp/contacts/manager/NotificationManager;->b(Ljava/lang/String;Ljava/lang/String;Z)Landroidx/core/app/g$e;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/core/app/g$e;->b()Landroid/app/Notification;

    move-result-object v0

    goto :goto_2

    .line 120
    :cond_8
    invoke-static {}, Lcom/callapp/contacts/manager/NotificationManager;->get()Lcom/callapp/contacts/manager/NotificationManager;

    move-result-object v1

    invoke-virtual {v1, v0, v3, v2}, Lcom/callapp/contacts/manager/NotificationManager;->a(Ljava/lang/String;Ljava/lang/String;Z)Landroidx/core/app/g$e;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/core/app/g$e;->b()Landroid/app/Notification;

    move-result-object v0

    .line 118
    :goto_2
    invoke-virtual {v6, v4, v0}, Lcom/callapp/contacts/manager/NotificationManager;->a(ILandroid/app/Notification;)Z
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    .line 122
    invoke-static {p2, v0}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/Throwable;)V

    :goto_3
    const-string p2, "start_floating_widget"

    .line 125
    invoke-virtual {p1, p2, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    if-eqz p2, :cond_9

    .line 126
    invoke-static {p3}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppChatHeadLifecycleObserver;->getStartFloatingWidgetServiceIntent(I)Landroid/content/Intent;

    move-result-object p2

    .line 127
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/callapp/contacts/CallAppApplication;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 1204
    :cond_9
    :goto_4
    new-instance p2, Lcom/callapp/contacts/service/CallAppService$2;

    invoke-direct {p2, p0, p1}, Lcom/callapp/contacts/service/CallAppService$2;-><init>(Lcom/callapp/contacts/service/CallAppService;Landroid/content/Intent;)V

    .line 1209
    invoke-virtual {p2}, Lcom/callapp/contacts/service/CallAppService$2;->execute()Lcom/callapp/contacts/manager/task/Task;

    goto :goto_5

    :cond_a
    if-nez p1, :cond_b

    const-string p1, "Service was stopped and automatically restarted by the system. Stopping self now."

    .line 180
    invoke-static {p2, p1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 181
    invoke-virtual {p0, p3}, Lcom/callapp/contacts/service/CallAppService;->stopForeground(Z)V

    :cond_b
    :goto_5
    return p3
.end method

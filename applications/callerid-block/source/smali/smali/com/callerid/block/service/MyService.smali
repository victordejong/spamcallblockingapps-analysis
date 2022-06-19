.class public Lcom/callerid/block/service/MyService;
.super Landroid/app/Service;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callerid/block/service/MyService$InnerService;
    }
.end annotation


# instance fields
.field private b:Z

.field private c:Lcom/callerid/block/receiver/PhoneStateReceiver;

.field private d:Lcom/callerid/block/receiver/ScreenReceiver;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method private b()V
    .locals 9

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/callerid/block/service/MyService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "alarm"

    invoke-virtual {p0, v1}, Landroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroid/app/AlarmManager;

    const/4 v1, 0x0

    const/high16 v3, 0x10000000

    invoke-static {p0, v1, v0, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    if-eqz v2, :cond_0

    const/4 v3, 0x1

    const-wide/16 v6, 0x2710

    invoke-virtual/range {v2 .. v8}, Landroid/app/AlarmManager;->setInexactRepeating(IJJLandroid/app/PendingIntent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 7

    const-string v0, "com.callerid.block_notfication_N"

    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_1

    sget-boolean v1, Lcom/callerid/block/util/w;->a:Z

    if-eqz v1, :cond_0

    const-string v1, "tony"

    const-string v2, "NotificationManager"

    invoke-static {v1, v2}, Lcom/callerid/block/util/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/callerid/block/service/MyService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {p0, v1}, Landroidx/core/content/a;->l(Landroid/content/Context;Landroid/content/Intent;)V

    const-string v1, "notification"

    invoke-virtual {p0, v1}, Landroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    if-eqz v1, :cond_1

    new-instance v2, Landroid/app/NotificationChannel;

    const v3, 0x7f10002f

    invoke-virtual {p0, v3}, Landroid/app/Service;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {v2, v0, v3, v4}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/NotificationChannel;->setShowBadge(Z)V

    invoke-virtual {v2, v3}, Landroid/app/NotificationChannel;->enableVibration(Z)V

    new-array v4, v4, [J

    const-wide/16 v5, 0x0

    aput-wide v5, v4, v3

    invoke-virtual {v2, v4}, Landroid/app/NotificationChannel;->setVibrationPattern([J)V

    invoke-virtual {v1, v2}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    new-instance v1, Landroidx/core/app/i$e;

    invoke-direct {v1, p0, v0}, Landroidx/core/app/i$e;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/callerid/block/start/CallerActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v2, 0x8000000

    invoke-static {p0, v3, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/core/app/i$e;->h(Landroid/app/PendingIntent;)Landroidx/core/app/i$e;

    const v0, 0x7f100073

    invoke-virtual {p0, v0}, Landroid/app/Service;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/core/app/i$e;->j(Ljava/lang/CharSequence;)Landroidx/core/app/i$e;

    const v0, 0x7f08012f

    invoke-virtual {v1, v0}, Landroidx/core/app/i$e;->u(I)Landroidx/core/app/i$e;

    invoke-virtual {p0}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f06005a

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroidx/core/app/i$e;->g(I)Landroidx/core/app/i$e;

    const/16 v0, 0x3ca

    invoke-virtual {v1}, Landroidx/core/app/i$e;->a()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()V
    .locals 3

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    invoke-virtual {p0}, Lcom/callerid/block/service/MyService;->a()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/callerid/block/service/MyService;->b:Z

    invoke-direct {p0}, Lcom/callerid/block/service/MyService;->b()V

    const-string v0, "tony"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcom/callerid/block/util/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    const-string v2, "android.intent.action.NEW_OUTGOING_CALL"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.PHONE_STATE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v2, Lcom/callerid/block/receiver/PhoneStateReceiver;

    invoke-direct {v2}, Lcom/callerid/block/receiver/PhoneStateReceiver;-><init>()V

    iput-object v2, p0, Lcom/callerid/block/service/MyService;->c:Lcom/callerid/block/receiver/PhoneStateReceiver;

    invoke-virtual {p0, v2, v0}, Landroid/app/Service;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-ge v0, v2, :cond_0

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    new-instance v1, Lcom/callerid/block/receiver/ScreenReceiver;

    invoke-direct {v1}, Lcom/callerid/block/receiver/ScreenReceiver;-><init>()V

    iput-object v1, p0, Lcom/callerid/block/service/MyService;->d:Lcom/callerid/block/receiver/ScreenReceiver;

    invoke-virtual {p0, v1, v0}, Landroid/app/Service;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 4

    const-string v0, "tony"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/callerid/block/util/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/callerid/block/service/MyService;->d:Lcom/callerid/block/receiver/ScreenReceiver;

    if-eqz v1, :cond_0

    invoke-virtual {p0, v1}, Landroid/app/Service;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    iget-object v1, p0, Lcom/callerid/block/service/MyService;->c:Lcom/callerid/block/receiver/PhoneStateReceiver;

    if-eqz v1, :cond_1

    invoke-virtual {p0, v1}, Landroid/app/Service;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_1
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/app/Service;->stopForeground(Z)V

    const/16 v2, 0x1a

    if-lt v0, v2, :cond_2

    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/callerid/block/service/MyService;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/callerid/block/service/MyService$a;

    invoke-direct {v3, p0}, Lcom/callerid/block/service/MyService$a;-><init>(Lcom/callerid/block/service/MyService;)V

    invoke-virtual {v2, v0, v3, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    goto :goto_0

    :cond_2
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/callerid/block/service/MyService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/app/Service;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 6

    iget-boolean p2, p0, Lcom/callerid/block/service/MyService;->b:Z

    const/4 p3, 0x1

    if-eqz p2, :cond_4

    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x12

    const/16 v1, 0x3ca

    const/4 v2, 0x0

    if-ge p2, v0, :cond_0

    new-instance p1, Landroid/app/Notification;

    invoke-direct {p1}, Landroid/app/Notification;-><init>()V

    :goto_0
    invoke-virtual {p0, v1, p1}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    goto/16 :goto_1

    :cond_0
    const/16 v0, 0x1a

    if-ge p2, v0, :cond_1

    invoke-static {}, Lcom/callerid/block/util/t0;->U()Z

    move-result p1

    if-nez p1, :cond_3

    new-instance p1, Landroid/app/Notification;

    invoke-direct {p1}, Landroid/app/Notification;-><init>()V

    invoke-virtual {p0, v1, p1}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    new-instance p1, Landroid/content/Intent;

    const-class p2, Lcom/callerid/block/service/MyService$InnerService;

    invoke-direct {p1, p0, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Landroid/app/Service;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_1

    :cond_1
    if-eqz p1, :cond_3

    const-string p2, "show_notifi"

    invoke-virtual {p1, p2, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_3

    sget-boolean p1, Lcom/callerid/block/util/w;->a:Z

    if-eqz p1, :cond_2

    const-string p1, "tony"

    const-string p2, "NotificationManager"

    invoke-static {p1, p2}, Lcom/callerid/block/util/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const-string p1, "notification"

    invoke-virtual {p0, p1}, Landroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationManager;

    if-eqz p1, :cond_3

    new-instance p2, Landroid/app/NotificationChannel;

    const v0, 0x7f10002f

    invoke-virtual {p0, v0}, Landroid/app/Service;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v3, "com.callerid.block_notfication_N"

    invoke-direct {p2, v3, v0, p3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    invoke-virtual {p2, v2}, Landroid/app/NotificationChannel;->setShowBadge(Z)V

    invoke-virtual {p2, v2}, Landroid/app/NotificationChannel;->enableVibration(Z)V

    new-array v0, p3, [J

    const-wide/16 v4, 0x0

    aput-wide v4, v0, v2

    invoke-virtual {p2, v0}, Landroid/app/NotificationChannel;->setVibrationPattern([J)V

    invoke-virtual {p1, p2}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    new-instance p1, Landroidx/core/app/i$e;

    invoke-direct {p1, p0, v3}, Landroidx/core/app/i$e;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance p2, Landroid/content/Intent;

    const-class v0, Lcom/callerid/block/start/CallerActivity;

    invoke-direct {p2, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v0, 0x10000000

    invoke-virtual {p2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v0, 0x8000000

    invoke-static {p0, v2, p2, v0}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/core/app/i$e;->h(Landroid/app/PendingIntent;)Landroidx/core/app/i$e;

    const p2, 0x7f100073

    invoke-virtual {p0, p2}, Landroid/app/Service;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/core/app/i$e;->j(Ljava/lang/CharSequence;)Landroidx/core/app/i$e;

    const p2, 0x7f08012f

    invoke-virtual {p1, p2}, Landroidx/core/app/i$e;->u(I)Landroidx/core/app/i$e;

    invoke-virtual {p0}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f06005a

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroidx/core/app/i$e;->g(I)Landroidx/core/app/i$e;

    invoke-virtual {p1}, Landroidx/core/app/i$e;->a()Landroid/app/Notification;

    move-result-object p1

    goto/16 :goto_0

    :cond_3
    :goto_1
    iput-boolean v2, p0, Lcom/callerid/block/service/MyService;->b:Z

    :cond_4
    return p3
.end method

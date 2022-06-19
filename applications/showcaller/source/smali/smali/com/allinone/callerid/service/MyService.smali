.class public Lcom/allinone/callerid/service/MyService;
.super Landroid/app/Service;
.source "MyService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/allinone/callerid/service/MyService$InnerService;
    }
.end annotation


# instance fields
.field private d:Z

.field private final e:Lcom/allinone/callerid/service/a;

.field private f:Lcom/allinone/callerid/receiver/PhoneStateReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 2
    new-instance v0, Lcom/allinone/callerid/service/a;

    invoke-direct {v0}, Lcom/allinone/callerid/service/a;-><init>()V

    iput-object v0, p0, Lcom/allinone/callerid/service/MyService;->e:Lcom/allinone/callerid/service/a;

    return-void
.end method

.method private b()V
    .locals 8

    :try_start_0
    const-string v0, "alarm"

    .line 1
    invoke-virtual {p0, v0}, Landroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/app/AlarmManager;

    .line 2
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/Service;->getApplication()Landroid/app/Application;

    move-result-object v2

    const-class v3, Lcom/allinone/callerid/service/MyService;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/16 v3, 0x400

    const/high16 v4, 0x4000000

    invoke-static {v2, v3, v0, v4}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    .line 4
    invoke-virtual {v1, v7}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    const/4 v2, 0x2

    .line 5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    const-wide/16 v5, 0x7530

    add-long/2addr v3, v5

    invoke-virtual/range {v1 .. v7}, Landroid/app/AlarmManager;->setInexactRepeating(IJJLandroid/app/PendingIntent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 7

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_1

    .line 2
    sget-boolean v0, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "tony"

    const-string v1, "NotificationManager"

    .line 3
    invoke-static {v0, v1}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/allinone/callerid/service/MyService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 5
    invoke-static {p0, v0}, Landroidx/core/content/a;->l(Landroid/content/Context;Landroid/content/Intent;)V

    const-string v0, "notification"

    .line 6
    invoke-virtual {p0, v0}, Landroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    if-eqz v0, :cond_1

    .line 7
    new-instance v1, Landroid/app/NotificationChannel;

    const v2, 0x7f100066

    .line 8
    invoke-virtual {p0, v2}, Landroid/app/Service;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.allinone.callerid_notfication_N"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v2, v4}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    const/4 v2, 0x0

    .line 9
    invoke-virtual {v1, v2}, Landroid/app/NotificationChannel;->setShowBadge(Z)V

    .line 10
    invoke-virtual {v1, v2}, Landroid/app/NotificationChannel;->enableVibration(Z)V

    new-array v4, v4, [J

    const-wide/16 v5, 0x0

    aput-wide v5, v4, v2

    .line 11
    invoke-virtual {v1, v4}, Landroid/app/NotificationChannel;->setVibrationPattern([J)V

    .line 12
    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 13
    new-instance v0, Landroidx/core/app/h$e;

    invoke-direct {v0, p0, v3}, Landroidx/core/app/h$e;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 14
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/allinone/callerid/start/PushControlActivity;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v3, 0x10000000

    .line 15
    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v3, 0xc000000

    .line 16
    invoke-static {p0, v2, v1, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 17
    invoke-virtual {v0, v1}, Landroidx/core/app/h$e;->i(Landroid/app/PendingIntent;)Landroidx/core/app/h$e;

    const v1, 0x7f1002f9

    .line 18
    invoke-virtual {p0, v1}, Landroid/app/Service;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/core/app/h$e;->k(Ljava/lang/CharSequence;)Landroidx/core/app/h$e;

    const v1, 0x7f080270

    .line 19
    invoke-virtual {v0, v1}, Landroidx/core/app/h$e;->v(I)Landroidx/core/app/h$e;

    .line 20
    invoke-virtual {p0}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06003a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/core/app/h$e;->h(I)Landroidx/core/app/h$e;

    const/16 v1, 0x3d1

    .line 21
    invoke-virtual {v0}, Landroidx/core/app/h$e;->b()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    :cond_1
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/allinone/callerid/service/MyService;->e:Lcom/allinone/callerid/service/a;

    invoke-virtual {p1, p0}, Lcom/allinone/callerid/service/a;->b(Lcom/allinone/callerid/service/MyService;)V

    .line 2
    iget-object p1, p0, Lcom/allinone/callerid/service/MyService;->e:Lcom/allinone/callerid/service/a;

    return-object p1
.end method

.method public onCreate()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 2
    sget-boolean v0, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "tony"

    const-string v1, "MyService_onCreate"

    .line 3
    invoke-static {v0, v1}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/allinone/callerid/service/MyService;->a()V

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/allinone/callerid/service/MyService;->d:Z

    .line 6
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const/16 v1, 0x3e8

    .line 7
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    const-string v1, "android.intent.action.NEW_OUTGOING_CALL"

    .line 8
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PHONE_STATE"

    .line 9
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 10
    new-instance v1, Lcom/allinone/callerid/receiver/PhoneStateReceiver;

    invoke-direct {v1}, Lcom/allinone/callerid/receiver/PhoneStateReceiver;-><init>()V

    iput-object v1, p0, Lcom/allinone/callerid/service/MyService;->f:Lcom/allinone/callerid/receiver/PhoneStateReceiver;

    .line 11
    invoke-virtual {p0, v1, v0}, Landroid/app/Service;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 12
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-ge v0, v1, :cond_1

    .line 13
    invoke-static {}, Lcom/allinone/callerid/util/a0;->b()Lcom/allinone/callerid/util/a0;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/allinone/callerid/util/a0;->c(Landroid/content/Context;)V

    :cond_1
    const/16 v1, 0x17

    if-ge v0, v1, :cond_2

    .line 14
    invoke-direct {p0}, Lcom/allinone/callerid/service/MyService;->b()V

    :cond_2
    return-void
.end method

.method public onDestroy()V
    .locals 4

    .line 1
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 2
    :try_start_0
    sget-boolean v0, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "tony"

    const-string v1, "MyService_onDestroy"

    .line 3
    invoke-static {v0, v1}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-ge v0, v1, :cond_1

    .line 5
    invoke-static {}, Lcom/allinone/callerid/util/a0;->b()Lcom/allinone/callerid/util/a0;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/allinone/callerid/util/a0;->f(Landroid/content/Context;)V

    .line 6
    :cond_1
    iget-object v1, p0, Lcom/allinone/callerid/service/MyService;->f:Lcom/allinone/callerid/receiver/PhoneStateReceiver;

    if-eqz v1, :cond_2

    .line 7
    invoke-virtual {p0, v1}, Landroid/app/Service;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_2
    const/4 v1, 0x1

    .line 8
    invoke-virtual {p0, v1}, Landroid/app/Service;->stopForeground(Z)V

    const/16 v2, 0x1a

    if-lt v0, v2, :cond_3

    const/16 v2, 0x1f

    if-ge v0, v2, :cond_4

    .line 9
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/allinone/callerid/service/MyService;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 10
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/allinone/callerid/service/MyService$a;

    invoke-direct {v3, p0}, Lcom/allinone/callerid/service/MyService$a;-><init>(Lcom/allinone/callerid/service/MyService;)V

    invoke-virtual {v2, v0, v3, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    goto :goto_0

    .line 11
    :cond_3
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/allinone/callerid/service/MyService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/app/Service;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 12
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    :goto_0
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 6

    const-string p1, "com.allinone.callerid_notfication_N"

    .line 1
    sget-boolean p2, Lcom/allinone/callerid/util/c0;->a:Z

    const-string p3, "tony"

    if-eqz p2, :cond_0

    const-string p2, "onStartCommand"

    .line 2
    invoke-static {p3, p2}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 p2, 0x1

    .line 3
    :try_start_0
    iget-boolean v0, p0, Lcom/allinone/callerid/service/MyService;->d:Z

    if-eqz v0, :cond_5

    .line 4
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    const/16 v2, 0x3d1

    const/4 v3, 0x0

    if-ge v0, v1, :cond_1

    .line 5
    new-instance p1, Landroid/app/Notification;

    invoke-direct {p1}, Landroid/app/Notification;-><init>()V

    invoke-virtual {p0, v2, p1}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    goto/16 :goto_0

    :cond_1
    const/16 v1, 0x1a

    if-ge v0, v1, :cond_2

    .line 6
    invoke-static {}, Lcom/allinone/callerid/util/h1;->q0()Z

    move-result p1

    if-nez p1, :cond_4

    .line 7
    new-instance p1, Landroid/app/Notification;

    invoke-direct {p1}, Landroid/app/Notification;-><init>()V

    invoke-virtual {p0, v2, p1}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    .line 8
    new-instance p1, Landroid/content/Intent;

    const-class p3, Lcom/allinone/callerid/service/MyService$InnerService;

    invoke-direct {p1, p0, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Landroid/app/Service;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 9
    :cond_2
    sget-boolean v0, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz v0, :cond_3

    const-string v0, "NotificationManager"

    .line 10
    invoke-static {p3, v0}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    const-string p3, "notification"

    .line 11
    invoke-virtual {p0, p3}, Landroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/app/NotificationManager;

    if-eqz p3, :cond_4

    .line 12
    new-instance v0, Landroid/app/NotificationChannel;

    const v1, 0x7f100066

    .line 13
    invoke-virtual {p0, v1}, Landroid/app/Service;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1, p2}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 14
    invoke-virtual {v0, v3}, Landroid/app/NotificationChannel;->setShowBadge(Z)V

    .line 15
    invoke-virtual {v0, v3}, Landroid/app/NotificationChannel;->enableVibration(Z)V

    new-array v1, p2, [J

    const-wide/16 v4, 0x0

    aput-wide v4, v1, v3

    .line 16
    invoke-virtual {v0, v1}, Landroid/app/NotificationChannel;->setVibrationPattern([J)V

    .line 17
    invoke-virtual {p3, v0}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 18
    new-instance p3, Landroidx/core/app/h$e;

    invoke-direct {p3, p0, p1}, Landroidx/core/app/h$e;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 19
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/allinone/callerid/start/PushControlActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v0, 0x10000000

    .line 20
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v0, 0xc000000

    .line 21
    invoke-static {p0, v3, p1, v0}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    .line 22
    invoke-virtual {p3, p1}, Landroidx/core/app/h$e;->i(Landroid/app/PendingIntent;)Landroidx/core/app/h$e;

    const p1, 0x7f1002f9

    .line 23
    invoke-virtual {p0, p1}, Landroid/app/Service;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroidx/core/app/h$e;->k(Ljava/lang/CharSequence;)Landroidx/core/app/h$e;

    const p1, 0x7f080270

    .line 24
    invoke-virtual {p3, p1}, Landroidx/core/app/h$e;->v(I)Landroidx/core/app/h$e;

    .line 25
    invoke-virtual {p0}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f06003a

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {p3, p1}, Landroidx/core/app/h$e;->h(I)Landroidx/core/app/h$e;

    .line 26
    invoke-virtual {p3}, Landroidx/core/app/h$e;->b()Landroid/app/Notification;

    move-result-object p1

    invoke-virtual {p0, v2, p1}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    .line 27
    :cond_4
    :goto_0
    iput-boolean v3, p0, Lcom/allinone/callerid/service/MyService;->d:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 28
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_5
    :goto_1
    return p2
.end method

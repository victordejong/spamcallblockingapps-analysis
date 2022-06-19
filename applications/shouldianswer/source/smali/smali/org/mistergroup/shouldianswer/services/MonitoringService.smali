.class public final Lorg/mistergroup/shouldianswer/services/MonitoringService;
.super Landroid/app/Service;
.source "MonitoringService.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mistergroup/shouldianswer/services/MonitoringService$b;,
        Lorg/mistergroup/shouldianswer/services/MonitoringService$c;,
        Lorg/mistergroup/shouldianswer/services/MonitoringService$a;
    }
.end annotation


# static fields
.field public static final a:Lorg/mistergroup/shouldianswer/services/MonitoringService$a;

.field private static g:Lorg/mistergroup/shouldianswer/services/MonitoringService; = null

# The value of this static final field might be set in the static constructor
.field private static final h:Ljava/lang/String; = "ACTION_STOP_FOREGROUND"


# instance fields
.field private final b:I

.field private final c:Lorg/mistergroup/shouldianswer/services/MonitoringService$b;

.field private final d:Landroid/telephony/TelephonyManager;

.field private final e:Lorg/mistergroup/shouldianswer/receivers/PhoneStateReceiver;

.field private final f:Lorg/mistergroup/shouldianswer/services/MonitoringService$c;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/mistergroup/shouldianswer/services/MonitoringService$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/mistergroup/shouldianswer/services/MonitoringService$a;-><init>(Lkotlin/e/b/e;)V

    sput-object v0, Lorg/mistergroup/shouldianswer/services/MonitoringService;->a:Lorg/mistergroup/shouldianswer/services/MonitoringService$a;

    const-string v0, "ACTION_STOP_FOREGROUND"

    .line 131
    sput-object v0, Lorg/mistergroup/shouldianswer/services/MonitoringService;->h:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 25
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const v0, 0x12d19f

    .line 26
    iput v0, p0, Lorg/mistergroup/shouldianswer/services/MonitoringService;->b:I

    .line 27
    new-instance v0, Lorg/mistergroup/shouldianswer/services/MonitoringService$b;

    invoke-direct {v0, p0}, Lorg/mistergroup/shouldianswer/services/MonitoringService$b;-><init>(Lorg/mistergroup/shouldianswer/services/MonitoringService;)V

    iput-object v0, p0, Lorg/mistergroup/shouldianswer/services/MonitoringService;->c:Lorg/mistergroup/shouldianswer/services/MonitoringService$b;

    .line 28
    sget-object v0, Lorg/mistergroup/shouldianswer/utils/y;->b:Lorg/mistergroup/shouldianswer/utils/y;

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/utils/y;->d()Landroid/telephony/TelephonyManager;

    move-result-object v0

    iput-object v0, p0, Lorg/mistergroup/shouldianswer/services/MonitoringService;->d:Landroid/telephony/TelephonyManager;

    .line 29
    new-instance v0, Lorg/mistergroup/shouldianswer/receivers/PhoneStateReceiver;

    invoke-direct {v0}, Lorg/mistergroup/shouldianswer/receivers/PhoneStateReceiver;-><init>()V

    iput-object v0, p0, Lorg/mistergroup/shouldianswer/services/MonitoringService;->e:Lorg/mistergroup/shouldianswer/receivers/PhoneStateReceiver;

    .line 30
    new-instance v0, Lorg/mistergroup/shouldianswer/services/MonitoringService$c;

    invoke-direct {v0}, Lorg/mistergroup/shouldianswer/services/MonitoringService$c;-><init>()V

    iput-object v0, p0, Lorg/mistergroup/shouldianswer/services/MonitoringService;->f:Lorg/mistergroup/shouldianswer/services/MonitoringService$c;

    .line 33
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/services/MonitoringService;->e:Lorg/mistergroup/shouldianswer/receivers/PhoneStateReceiver;

    sget-object v1, Lorg/mistergroup/shouldianswer/utils/e$a;->g:Lorg/mistergroup/shouldianswer/utils/e$a;

    invoke-virtual {v0, v1}, Lorg/mistergroup/shouldianswer/receivers/PhoneStateReceiver;->a(Lorg/mistergroup/shouldianswer/utils/e$a;)V

    return-void
.end method

.method public static final synthetic a()Lorg/mistergroup/shouldianswer/services/MonitoringService;
    .locals 1

    .line 25
    sget-object v0, Lorg/mistergroup/shouldianswer/services/MonitoringService;->g:Lorg/mistergroup/shouldianswer/services/MonitoringService;

    return-object v0
.end method

.method public static final synthetic a(Lorg/mistergroup/shouldianswer/services/MonitoringService;)V
    .locals 0

    .line 25
    sput-object p0, Lorg/mistergroup/shouldianswer/services/MonitoringService;->g:Lorg/mistergroup/shouldianswer/services/MonitoringService;

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    const-string v0, "intent"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 107
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/services/MonitoringService;->c:Lorg/mistergroup/shouldianswer/services/MonitoringService$b;

    check-cast p1, Landroid/os/IBinder;

    return-object p1
.end method

.method public onCreate()V
    .locals 9

    .line 37
    sget-object v0, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const-string v3, "SERVICE: MonitoringService.onCreate"

    invoke-static {v0, v3, v2, v1, v2}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 39
    :try_start_0
    move-object v0, p0

    check-cast v0, Lorg/mistergroup/shouldianswer/services/MonitoringService;

    sput-object v0, Lorg/mistergroup/shouldianswer/services/MonitoringService;->g:Lorg/mistergroup/shouldianswer/services/MonitoringService;

    .line 40
    sget-object v0, Lorg/mistergroup/shouldianswer/MyApp;->c:Lorg/mistergroup/shouldianswer/MyApp$a;

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/MyApp$a;->a()Lorg/mistergroup/shouldianswer/MyApp;

    move-result-object v0

    .line 41
    sget-object v3, Lorg/mistergroup/shouldianswer/utils/o;->a:Lorg/mistergroup/shouldianswer/utils/o;

    invoke-virtual {v3}, Lorg/mistergroup/shouldianswer/utils/o;->f()Z

    move-result v3

    .line 42
    sget-object v4, Lorg/mistergroup/shouldianswer/utils/o;->a:Lorg/mistergroup/shouldianswer/utils/o;

    invoke-virtual {v4}, Lorg/mistergroup/shouldianswer/utils/o;->h()Z

    move-result v4

    .line 43
    sget-object v5, Lorg/mistergroup/shouldianswer/utils/o;->a:Lorg/mistergroup/shouldianswer/utils/o;

    invoke-virtual {v5}, Lorg/mistergroup/shouldianswer/utils/o;->j()Z

    move-result v5

    .line 44
    sget-object v6, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Permission canReadCallLog="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v2, v1, v2}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 45
    sget-object v6, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Permission canReadPhoneState="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v2, v1, v2}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 46
    sget-object v6, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Permission canReadContact="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v2, v1, v2}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    if-eqz v3, :cond_0

    if-eqz v4, :cond_0

    if-nez v5, :cond_1

    .line 48
    :cond_0
    sget-object v3, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const-string v4, "MonitoringService.updateCallMonitoring invalid permissions!"

    invoke-static {v3, v4, v2, v1, v2}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 49
    sget-object v3, Lorg/mistergroup/shouldianswer/b/d;->a:Lorg/mistergroup/shouldianswer/b/d;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lorg/mistergroup/shouldianswer/b/d;->a(Z)V

    .line 51
    :cond_1
    iget-object v3, p0, Lorg/mistergroup/shouldianswer/services/MonitoringService;->d:Landroid/telephony/TelephonyManager;

    iget-object v4, p0, Lorg/mistergroup/shouldianswer/services/MonitoringService;->f:Lorg/mistergroup/shouldianswer/services/MonitoringService$c;

    check-cast v4, Landroid/telephony/PhoneStateListener;

    const/16 v5, 0x20

    invoke-virtual {v3, v4, v5}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 52
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 53
    sget-object v4, Landroid/telephony/TelephonyManager;->EXTRA_STATE_RINGING:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v4, "android.intent.action.PHONE_STATE"

    .line 54
    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 55
    iget-object v4, p0, Lorg/mistergroup/shouldianswer/services/MonitoringService;->e:Lorg/mistergroup/shouldianswer/receivers/PhoneStateReceiver;

    check-cast v4, Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v4, v3}, Lorg/mistergroup/shouldianswer/services/MonitoringService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 57
    sget-object v3, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const-string v4, "SERVICE: MonitoringService.onCreate startForeground"

    invoke-static {v3, v4, v2, v1, v2}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 58
    sget-object v3, Lorg/mistergroup/shouldianswer/ui/main/MainFragment;->b:Lorg/mistergroup/shouldianswer/ui/main/MainFragment$b;

    move-object v4, v0

    check-cast v4, Landroid/content/Context;

    invoke-virtual {v3, v4}, Lorg/mistergroup/shouldianswer/ui/main/MainFragment$b;->a(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v3

    .line 59
    new-instance v4, Landroidx/core/app/h$d;

    move-object v5, v0

    check-cast v5, Landroid/content/Context;

    sget-object v6, Lorg/mistergroup/shouldianswer/utils/m;->a:Lorg/mistergroup/shouldianswer/utils/m;

    invoke-virtual {v6}, Lorg/mistergroup/shouldianswer/utils/m;->f()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroidx/core/app/h$d;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v5, 0x7f0800d2

    .line 60
    invoke-virtual {v4, v5}, Landroidx/core/app/h$d;->a(I)Landroidx/core/app/h$d;

    move-result-object v4

    const v5, 0x7f10008e

    .line 61
    invoke-virtual {v0, v5}, Lorg/mistergroup/shouldianswer/MyApp;->getString(I)Ljava/lang/String;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Landroidx/core/app/h$d;->a(Ljava/lang/CharSequence;)Landroidx/core/app/h$d;

    move-result-object v4

    const v5, 0x7f1001df

    .line 62
    invoke-virtual {v0, v5}, Lorg/mistergroup/shouldianswer/MyApp;->getString(I)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v4, v0}, Landroidx/core/app/h$d;->b(Ljava/lang/CharSequence;)Landroidx/core/app/h$d;

    move-result-object v0

    const-string v4, "Checked Calls"

    .line 63
    invoke-virtual {v0, v4}, Landroidx/core/app/h$d;->b(Ljava/lang/String;)Landroidx/core/app/h$d;

    move-result-object v0

    const/4 v4, 0x1

    .line 64
    invoke-virtual {v0, v4}, Landroidx/core/app/h$d;->f(Z)Landroidx/core/app/h$d;

    move-result-object v0

    .line 65
    invoke-virtual {v0, v4}, Landroidx/core/app/h$d;->e(Z)Landroidx/core/app/h$d;

    move-result-object v0

    const/4 v4, -0x2

    .line 66
    invoke-virtual {v0, v4}, Landroidx/core/app/h$d;->d(I)Landroidx/core/app/h$d;

    move-result-object v0

    .line 68
    invoke-virtual {v0, v3}, Landroidx/core/app/h$d;->a(Landroid/app/PendingIntent;)Landroidx/core/app/h$d;

    move-result-object v0

    .line 69
    invoke-virtual {v0}, Landroidx/core/app/h$d;->b()Landroid/app/Notification;

    move-result-object v0

    .line 70
    iget v3, p0, Lorg/mistergroup/shouldianswer/services/MonitoringService;->b:I

    invoke-virtual {p0, v3, v0}, Lorg/mistergroup/shouldianswer/services/MonitoringService;->startForeground(ILandroid/app/Notification;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 72
    sget-object v3, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    invoke-static {v3, v0, v2, v1, v2}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/Exception;Ljava/lang/String;ILjava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public onDestroy()V
    .locals 5

    .line 82
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 84
    :try_start_0
    sget-object v2, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const-string v3, "MonitoringService.onDestroy"

    invoke-static {v2, v3, v1, v0, v1}, Lorg/mistergroup/shouldianswer/utils/j;->b(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 85
    iget-object v2, p0, Lorg/mistergroup/shouldianswer/services/MonitoringService;->d:Landroid/telephony/TelephonyManager;

    iget-object v3, p0, Lorg/mistergroup/shouldianswer/services/MonitoringService;->f:Lorg/mistergroup/shouldianswer/services/MonitoringService$c;

    check-cast v3, Landroid/telephony/PhoneStateListener;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 86
    iget-object v2, p0, Lorg/mistergroup/shouldianswer/services/MonitoringService;->e:Lorg/mistergroup/shouldianswer/receivers/PhoneStateReceiver;

    check-cast v2, Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2}, Lorg/mistergroup/shouldianswer/services/MonitoringService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v2, 0x1

    .line 87
    invoke-virtual {p0, v2}, Lorg/mistergroup/shouldianswer/services/MonitoringService;->stopForeground(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 89
    sget-object v3, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    invoke-static {v3, v2, v1, v0, v1}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/Exception;Ljava/lang/String;ILjava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 4

    .line 94
    sget-object v0, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const-string v3, "MonitoringService.onStartCommand"

    invoke-static {v0, v3, v2, v1, v2}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 95
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    const/4 p2, 0x1

    if-eqz p1, :cond_0

    .line 96
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 97
    sget-object p3, Lorg/mistergroup/shouldianswer/services/MonitoringService;->h:Ljava/lang/String;

    invoke-static {p1, p3}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 98
    sget-object p1, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const-string p3, "MonitoringService.onStartCommand stopForeground"

    invoke-static {p1, p3, v2, v1, v2}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 99
    invoke-virtual {p0, p2}, Lorg/mistergroup/shouldianswer/services/MonitoringService;->stopForeground(Z)V

    .line 100
    invoke-virtual {p0}, Lorg/mistergroup/shouldianswer/services/MonitoringService;->stopSelf()V

    :cond_0
    return p2
.end method

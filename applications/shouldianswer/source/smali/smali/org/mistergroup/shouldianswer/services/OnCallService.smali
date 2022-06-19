.class public final Lorg/mistergroup/shouldianswer/services/OnCallService;
.super Landroid/app/Service;
.source "OnCallService.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mistergroup/shouldianswer/services/OnCallService$c;,
        Lorg/mistergroup/shouldianswer/services/OnCallService$d;,
        Lorg/mistergroup/shouldianswer/services/OnCallService$a;
    }
.end annotation


# static fields
.field public static final a:Lorg/mistergroup/shouldianswer/services/OnCallService$a;

.field private static g:Lorg/mistergroup/shouldianswer/services/OnCallService; = null

# The value of this static final field might be set in the static constructor
.field private static final h:Ljava/lang/String; = "ACTION_STOP_FOREGROUND"

# The value of this static final field might be set in the static constructor
.field private static final i:Ljava/lang/String; = "ACTION_SHOW_POPUP"

.field private static j:Lorg/mistergroup/shouldianswer/services/OnCallService;

.field private static k:Z

.field private static final l:Lorg/mistergroup/shouldianswer/services/OnCallService$b;


# instance fields
.field private final b:I

.field private final c:Lorg/mistergroup/shouldianswer/services/OnCallService$c;

.field private final d:Landroid/telephony/TelephonyManager;

.field private final e:Lorg/mistergroup/shouldianswer/receivers/PhoneStateReceiver;

.field private final f:Lorg/mistergroup/shouldianswer/services/OnCallService$d;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/mistergroup/shouldianswer/services/OnCallService$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/mistergroup/shouldianswer/services/OnCallService$a;-><init>(Lkotlin/e/b/e;)V

    sput-object v0, Lorg/mistergroup/shouldianswer/services/OnCallService;->a:Lorg/mistergroup/shouldianswer/services/OnCallService$a;

    const-string v0, "ACTION_STOP_FOREGROUND"

    .line 122
    sput-object v0, Lorg/mistergroup/shouldianswer/services/OnCallService;->h:Ljava/lang/String;

    const-string v0, "ACTION_SHOW_POPUP"

    .line 123
    sput-object v0, Lorg/mistergroup/shouldianswer/services/OnCallService;->i:Ljava/lang/String;

    .line 127
    new-instance v0, Lorg/mistergroup/shouldianswer/services/OnCallService$b;

    invoke-direct {v0}, Lorg/mistergroup/shouldianswer/services/OnCallService$b;-><init>()V

    sput-object v0, Lorg/mistergroup/shouldianswer/services/OnCallService;->l:Lorg/mistergroup/shouldianswer/services/OnCallService$b;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 23
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const v0, 0x12d19f

    .line 24
    iput v0, p0, Lorg/mistergroup/shouldianswer/services/OnCallService;->b:I

    .line 25
    new-instance v0, Lorg/mistergroup/shouldianswer/services/OnCallService$c;

    invoke-direct {v0, p0}, Lorg/mistergroup/shouldianswer/services/OnCallService$c;-><init>(Lorg/mistergroup/shouldianswer/services/OnCallService;)V

    iput-object v0, p0, Lorg/mistergroup/shouldianswer/services/OnCallService;->c:Lorg/mistergroup/shouldianswer/services/OnCallService$c;

    .line 26
    sget-object v0, Lorg/mistergroup/shouldianswer/utils/y;->b:Lorg/mistergroup/shouldianswer/utils/y;

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/utils/y;->d()Landroid/telephony/TelephonyManager;

    move-result-object v0

    iput-object v0, p0, Lorg/mistergroup/shouldianswer/services/OnCallService;->d:Landroid/telephony/TelephonyManager;

    .line 27
    new-instance v0, Lorg/mistergroup/shouldianswer/receivers/PhoneStateReceiver;

    invoke-direct {v0}, Lorg/mistergroup/shouldianswer/receivers/PhoneStateReceiver;-><init>()V

    iput-object v0, p0, Lorg/mistergroup/shouldianswer/services/OnCallService;->e:Lorg/mistergroup/shouldianswer/receivers/PhoneStateReceiver;

    .line 28
    new-instance v0, Lorg/mistergroup/shouldianswer/services/OnCallService$d;

    invoke-direct {v0}, Lorg/mistergroup/shouldianswer/services/OnCallService$d;-><init>()V

    iput-object v0, p0, Lorg/mistergroup/shouldianswer/services/OnCallService;->f:Lorg/mistergroup/shouldianswer/services/OnCallService$d;

    .line 31
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/services/OnCallService;->e:Lorg/mistergroup/shouldianswer/receivers/PhoneStateReceiver;

    sget-object v1, Lorg/mistergroup/shouldianswer/utils/e$a;->g:Lorg/mistergroup/shouldianswer/utils/e$a;

    invoke-virtual {v0, v1}, Lorg/mistergroup/shouldianswer/receivers/PhoneStateReceiver;->a(Lorg/mistergroup/shouldianswer/utils/e$a;)V

    return-void
.end method

.method public static final synthetic a()Lorg/mistergroup/shouldianswer/services/OnCallService;
    .locals 1

    .line 23
    sget-object v0, Lorg/mistergroup/shouldianswer/services/OnCallService;->g:Lorg/mistergroup/shouldianswer/services/OnCallService;

    return-object v0
.end method

.method public static final synthetic a(Lorg/mistergroup/shouldianswer/services/OnCallService;)V
    .locals 0

    .line 23
    sput-object p0, Lorg/mistergroup/shouldianswer/services/OnCallService;->g:Lorg/mistergroup/shouldianswer/services/OnCallService;

    return-void
.end method

.method public static final synthetic a(Z)V
    .locals 0

    .line 23
    sput-boolean p0, Lorg/mistergroup/shouldianswer/services/OnCallService;->k:Z

    return-void
.end method

.method public static final synthetic b(Lorg/mistergroup/shouldianswer/services/OnCallService;)V
    .locals 0

    .line 23
    sput-object p0, Lorg/mistergroup/shouldianswer/services/OnCallService;->j:Lorg/mistergroup/shouldianswer/services/OnCallService;

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    const-string v0, "intent"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/services/OnCallService;->c:Lorg/mistergroup/shouldianswer/services/OnCallService$c;

    check-cast p1, Landroid/os/IBinder;

    return-object p1
.end method

.method public onCreate()V
    .locals 5

    .line 35
    sget-object v0, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const-string v3, "SERVICE: OnCallService.onCreate"

    invoke-static {v0, v3, v2, v1, v2}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 37
    :try_start_0
    move-object v0, p0

    check-cast v0, Lorg/mistergroup/shouldianswer/services/OnCallService;

    sput-object v0, Lorg/mistergroup/shouldianswer/services/OnCallService;->g:Lorg/mistergroup/shouldianswer/services/OnCallService;

    .line 38
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/services/OnCallService;->d:Landroid/telephony/TelephonyManager;

    iget-object v3, p0, Lorg/mistergroup/shouldianswer/services/OnCallService;->f:Lorg/mistergroup/shouldianswer/services/OnCallService$d;

    check-cast v3, Landroid/telephony/PhoneStateListener;

    const/16 v4, 0x20

    invoke-virtual {v0, v3, v4}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 39
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 40
    sget-object v3, Landroid/telephony/TelephonyManager;->EXTRA_STATE_RINGING:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "android.intent.action.PHONE_STATE"

    .line 41
    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 42
    iget-object v3, p0, Lorg/mistergroup/shouldianswer/services/OnCallService;->e:Lorg/mistergroup/shouldianswer/receivers/PhoneStateReceiver;

    check-cast v3, Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v3, v0}, Lorg/mistergroup/shouldianswer/services/OnCallService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 45
    sget-object v3, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    invoke-static {v3, v0, v2, v1, v2}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/Exception;Ljava/lang/String;ILjava/lang/Object;)V

    .line 47
    :goto_0
    sget-object v0, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const-string v3, "SERVICE: OnCallService.onCreate.End"

    invoke-static {v0, v3, v2, v1, v2}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public onDestroy()V
    .locals 5

    .line 57
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 59
    :try_start_0
    sget-object v2, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const-string v3, "OnCallService.onDestroy"

    invoke-static {v2, v3, v1, v0, v1}, Lorg/mistergroup/shouldianswer/utils/j;->b(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 60
    iget-object v2, p0, Lorg/mistergroup/shouldianswer/services/OnCallService;->d:Landroid/telephony/TelephonyManager;

    iget-object v3, p0, Lorg/mistergroup/shouldianswer/services/OnCallService;->f:Lorg/mistergroup/shouldianswer/services/OnCallService$d;

    check-cast v3, Landroid/telephony/PhoneStateListener;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 61
    iget-object v2, p0, Lorg/mistergroup/shouldianswer/services/OnCallService;->e:Lorg/mistergroup/shouldianswer/receivers/PhoneStateReceiver;

    check-cast v2, Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2}, Lorg/mistergroup/shouldianswer/services/OnCallService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v2, 0x1

    .line 62
    invoke-virtual {p0, v2}, Lorg/mistergroup/shouldianswer/services/OnCallService;->stopForeground(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 64
    sget-object v3, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    invoke-static {v3, v2, v1, v0, v1}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/Exception;Ljava/lang/String;ILjava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 5

    .line 69
    sget-object v0, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const-string v3, "OnCallService.onStartCommand"

    invoke-static {v0, v3, v2, v1, v2}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 70
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    const/4 p2, 0x1

    if-eqz p1, :cond_0

    .line 71
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_1

    .line 72
    :cond_0
    sget-object p3, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const-string v0, "SERVICE: OnCallService.onStartCommand startForeground"

    invoke-static {p3, v0, v2, v1, v2}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 73
    sget-object p3, Lorg/mistergroup/shouldianswer/MyApp;->c:Lorg/mistergroup/shouldianswer/MyApp$a;

    invoke-virtual {p3}, Lorg/mistergroup/shouldianswer/MyApp$a;->a()Lorg/mistergroup/shouldianswer/MyApp;

    move-result-object p3

    .line 74
    sget-object v0, Lorg/mistergroup/shouldianswer/ui/main/MainFragment;->b:Lorg/mistergroup/shouldianswer/ui/main/MainFragment$b;

    check-cast p3, Landroid/content/Context;

    invoke-virtual {v0, p3}, Lorg/mistergroup/shouldianswer/ui/main/MainFragment$b;->a(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v0

    .line 75
    new-instance v3, Landroidx/core/app/h$d;

    sget-object v4, Lorg/mistergroup/shouldianswer/utils/m;->a:Lorg/mistergroup/shouldianswer/utils/m;

    invoke-virtual {v4}, Lorg/mistergroup/shouldianswer/utils/m;->d()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, p3, v4}, Landroidx/core/app/h$d;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const p3, 0x7f0800d2

    .line 76
    invoke-virtual {v3, p3}, Landroidx/core/app/h$d;->a(I)Landroidx/core/app/h$d;

    move-result-object p3

    .line 77
    invoke-virtual {p3, p2}, Landroidx/core/app/h$d;->e(Z)Landroidx/core/app/h$d;

    move-result-object p3

    const/4 v3, -0x2

    .line 78
    invoke-virtual {p3, v3}, Landroidx/core/app/h$d;->d(I)Landroidx/core/app/h$d;

    move-result-object p3

    .line 79
    invoke-virtual {p3, v0}, Landroidx/core/app/h$d;->a(Landroid/app/PendingIntent;)Landroidx/core/app/h$d;

    move-result-object p3

    .line 80
    invoke-virtual {p3}, Landroidx/core/app/h$d;->b()Landroid/app/Notification;

    move-result-object p3

    .line 81
    iget v0, p0, Lorg/mistergroup/shouldianswer/services/OnCallService;->b:I

    invoke-virtual {p0, v0, p3}, Lorg/mistergroup/shouldianswer/services/OnCallService;->startForeground(ILandroid/app/Notification;)V

    :cond_1
    if-eqz p1, :cond_3

    .line 83
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 84
    sget-object p3, Lorg/mistergroup/shouldianswer/services/OnCallService;->h:Ljava/lang/String;

    invoke-static {p1, p3}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 85
    sget-object p3, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const-string v0, "OnCallService.onStartCommand stopForeground"

    invoke-static {p3, v0, v2, v1, v2}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 86
    invoke-virtual {p0, p2}, Lorg/mistergroup/shouldianswer/services/OnCallService;->stopForeground(Z)V

    .line 87
    invoke-virtual {p0}, Lorg/mistergroup/shouldianswer/services/OnCallService;->stopSelf()V

    .line 89
    :cond_2
    sget-object p3, Lorg/mistergroup/shouldianswer/services/OnCallService;->i:Ljava/lang/String;

    invoke-static {p1, p3}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 90
    sget-object p1, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const-string p3, "OnCallService.onStartCommand showPopup"

    invoke-static {p1, p3, v2, v1, v2}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    :cond_3
    return p2
.end method

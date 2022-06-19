.class public Landroidx/work/impl/foreground/SystemForegroundService;
.super Landroidx/lifecycle/LifecycleService;
.source "SourceFile"

# interfaces
.implements Landroidx/work/impl/foreground/b$a;


# static fields
.field private static final c:Ljava/lang/String;

.field private static d:Landroidx/work/impl/foreground/SystemForegroundService;


# instance fields
.field a:Landroidx/work/impl/foreground/b;

.field b:Landroid/app/NotificationManager;

.field private e:Landroid/os/Handler;

.field private f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "SystemFgService"

    .line 42
    invoke-static {v0}, Landroidx/work/k;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/work/impl/foreground/SystemForegroundService;->c:Ljava/lang/String;

    const/4 v0, 0x0

    .line 45
    sput-object v0, Landroidx/work/impl/foreground/SystemForegroundService;->d:Landroidx/work/impl/foreground/SystemForegroundService;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Landroidx/lifecycle/LifecycleService;-><init>()V

    return-void
.end method

.method private b()V
    .locals 2

    .line 93
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroidx/work/impl/foreground/SystemForegroundService;->e:Landroid/os/Handler;

    .line 95
    invoke-virtual {p0}, Landroidx/work/impl/foreground/SystemForegroundService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Landroidx/work/impl/foreground/SystemForegroundService;->b:Landroid/app/NotificationManager;

    .line 96
    new-instance v0, Landroidx/work/impl/foreground/b;

    invoke-virtual {p0}, Landroidx/work/impl/foreground/SystemForegroundService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/work/impl/foreground/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroidx/work/impl/foreground/SystemForegroundService;->a:Landroidx/work/impl/foreground/b;

    .line 97
    invoke-virtual {v0, p0}, Landroidx/work/impl/foreground/b;->a(Landroidx/work/impl/foreground/b$a;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    const/4 v0, 0x1

    .line 103
    iput-boolean v0, p0, Landroidx/work/impl/foreground/SystemForegroundService;->f:Z

    .line 104
    invoke-static {}, Landroidx/work/k;->a()Landroidx/work/k;

    .line 107
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_0

    .line 108
    invoke-virtual {p0, v0}, Landroidx/work/impl/foreground/SystemForegroundService;->stopForeground(Z)V

    :cond_0
    const/4 v0, 0x0

    .line 110
    sput-object v0, Landroidx/work/impl/foreground/SystemForegroundService;->d:Landroidx/work/impl/foreground/SystemForegroundService;

    .line 111
    invoke-virtual {p0}, Landroidx/work/impl/foreground/SystemForegroundService;->stopSelf()V

    return-void
.end method

.method public final a(I)V
    .locals 2

    .line 144
    iget-object v0, p0, Landroidx/work/impl/foreground/SystemForegroundService;->e:Landroid/os/Handler;

    new-instance v1, Landroidx/work/impl/foreground/SystemForegroundService$3;

    invoke-direct {v1, p0, p1}, Landroidx/work/impl/foreground/SystemForegroundService$3;-><init>(Landroidx/work/impl/foreground/SystemForegroundService;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final a(IILandroid/app/Notification;)V
    .locals 2

    .line 120
    iget-object v0, p0, Landroidx/work/impl/foreground/SystemForegroundService;->e:Landroid/os/Handler;

    new-instance v1, Landroidx/work/impl/foreground/SystemForegroundService$1;

    invoke-direct {v1, p0, p1, p3, p2}, Landroidx/work/impl/foreground/SystemForegroundService$1;-><init>(Landroidx/work/impl/foreground/SystemForegroundService;ILandroid/app/Notification;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final a(ILandroid/app/Notification;)V
    .locals 2

    .line 134
    iget-object v0, p0, Landroidx/work/impl/foreground/SystemForegroundService;->e:Landroid/os/Handler;

    new-instance v1, Landroidx/work/impl/foreground/SystemForegroundService$2;

    invoke-direct {v1, p0, p1, p2}, Landroidx/work/impl/foreground/SystemForegroundService$2;-><init>(Landroidx/work/impl/foreground/SystemForegroundService;ILandroid/app/Notification;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onCreate()V
    .locals 0

    .line 57
    invoke-super {p0}, Landroidx/lifecycle/LifecycleService;->onCreate()V

    .line 58
    sput-object p0, Landroidx/work/impl/foreground/SystemForegroundService;->d:Landroidx/work/impl/foreground/SystemForegroundService;

    .line 59
    invoke-direct {p0}, Landroidx/work/impl/foreground/SystemForegroundService;->b()V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 87
    invoke-super {p0}, Landroidx/lifecycle/LifecycleService;->onDestroy()V

    .line 88
    iget-object v0, p0, Landroidx/work/impl/foreground/SystemForegroundService;->a:Landroidx/work/impl/foreground/b;

    invoke-virtual {v0}, Landroidx/work/impl/foreground/b;->a()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 4

    .line 64
    invoke-super {p0, p1, p2, p3}, Landroidx/lifecycle/LifecycleService;->onStartCommand(Landroid/content/Intent;II)I

    .line 65
    iget-boolean p2, p0, Landroidx/work/impl/foreground/SystemForegroundService;->f:Z

    const/4 p3, 0x0

    if-eqz p2, :cond_0

    .line 66
    invoke-static {}, Landroidx/work/k;->a()Landroidx/work/k;

    .line 70
    iget-object p2, p0, Landroidx/work/impl/foreground/SystemForegroundService;->a:Landroidx/work/impl/foreground/b;

    invoke-virtual {p2}, Landroidx/work/impl/foreground/b;->a()V

    .line 72
    invoke-direct {p0}, Landroidx/work/impl/foreground/SystemForegroundService;->b()V

    .line 74
    iput-boolean p3, p0, Landroidx/work/impl/foreground/SystemForegroundService;->f:Z

    :cond_0
    if-eqz p1, :cond_4

    .line 78
    iget-object p2, p0, Landroidx/work/impl/foreground/SystemForegroundService;->a:Landroidx/work/impl/foreground/b;

    .line 1216
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ACTION_START_FOREGROUND"

    .line 1217
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "KEY_WORKSPEC_ID"

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    .line 1242
    invoke-static {}, Landroidx/work/k;->a()Landroidx/work/k;

    new-array v0, v3, [Ljava/lang/Object;

    aput-object p1, v0, p3

    const-string p3, "Started foreground service %s"

    invoke-static {p3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 1243
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 1244
    iget-object v0, p2, Landroidx/work/impl/foreground/b;->b:Landroidx/work/impl/j;

    .line 1317
    iget-object v0, v0, Landroidx/work/impl/j;->c:Landroidx/work/impl/WorkDatabase;

    .line 1245
    iget-object v1, p2, Landroidx/work/impl/foreground/b;->c:Landroidx/work/impl/utils/b/a;

    new-instance v2, Landroidx/work/impl/foreground/b$1;

    invoke-direct {v2, p2, v0, p3}, Landroidx/work/impl/foreground/b$1;-><init>(Landroidx/work/impl/foreground/b;Landroidx/work/impl/WorkDatabase;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Landroidx/work/impl/utils/b/a;->a(Ljava/lang/Runnable;)V

    .line 1221
    invoke-virtual {p2, p1}, Landroidx/work/impl/foreground/b;->a(Landroid/content/Intent;)V

    goto :goto_0

    :cond_1
    const-string v1, "ACTION_NOTIFY"

    .line 1222
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1223
    invoke-virtual {p2, p1}, Landroidx/work/impl/foreground/b;->a(Landroid/content/Intent;)V

    goto :goto_0

    :cond_2
    const-string v1, "ACTION_CANCEL_WORK"

    .line 1224
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1318
    invoke-static {}, Landroidx/work/k;->a()Landroidx/work/k;

    new-array v0, v3, [Ljava/lang/Object;

    aput-object p1, v0, p3

    const-string p3, "Stopping foreground work for %s"

    invoke-static {p3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 1319
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 1320
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_4

    .line 1321
    iget-object p2, p2, Landroidx/work/impl/foreground/b;->b:Landroidx/work/impl/j;

    invoke-static {p1}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroidx/work/impl/j;->a(Ljava/util/UUID;)Landroidx/work/n;

    goto :goto_0

    :cond_3
    const-string p1, "ACTION_STOP_FOREGROUND"

    .line 1226
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 2310
    invoke-static {}, Landroidx/work/k;->a()Landroidx/work/k;

    .line 2311
    iget-object p1, p2, Landroidx/work/impl/foreground/b;->j:Landroidx/work/impl/foreground/b$a;

    if-eqz p1, :cond_4

    .line 2312
    iget-object p1, p2, Landroidx/work/impl/foreground/b;->j:Landroidx/work/impl/foreground/b$a;

    invoke-interface {p1}, Landroidx/work/impl/foreground/b$a;->a()V

    :cond_4
    :goto_0
    const/4 p1, 0x3

    return p1
.end method

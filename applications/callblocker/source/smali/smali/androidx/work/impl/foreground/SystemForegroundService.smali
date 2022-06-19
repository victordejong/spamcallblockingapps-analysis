.class public Landroidx/work/impl/foreground/SystemForegroundService;
.super Landroidx/lifecycle/k;
.source "SystemForegroundService.java"

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

    .prologue
    .line 42
    const-string/jumbo v0, "SystemFgService"

    invoke-static {v0}, Landroidx/work/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/work/impl/foreground/SystemForegroundService;->c:Ljava/lang/String;

    .line 45
    const/4 v0, 0x0

    sput-object v0, Landroidx/work/impl/foreground/SystemForegroundService;->d:Landroidx/work/impl/foreground/SystemForegroundService;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Landroidx/lifecycle/k;-><init>()V

    return-void
.end method

.method public static d()Landroidx/work/impl/foreground/SystemForegroundService;
    .locals 1

    .prologue
    .line 170
    sget-object v0, Landroidx/work/impl/foreground/SystemForegroundService;->d:Landroidx/work/impl/foreground/SystemForegroundService;

    return-object v0
.end method

.method private e()V
    .locals 2

    .prologue
    .line 93
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroidx/work/impl/foreground/SystemForegroundService;->e:Landroid/os/Handler;

    .line 95
    invoke-virtual {p0}, Landroidx/work/impl/foreground/SystemForegroundService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "notification"

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
    iget-object v0, p0, Landroidx/work/impl/foreground/SystemForegroundService;->a:Landroidx/work/impl/foreground/b;

    invoke-virtual {v0, p0}, Landroidx/work/impl/foreground/b;->a(Landroidx/work/impl/foreground/b$a;)V

    .line 98
    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 116
    iput-boolean v4, p0, Landroidx/work/impl/foreground/SystemForegroundService;->f:Z

    .line 117
    invoke-static {}, Landroidx/work/l;->a()Landroidx/work/l;

    move-result-object v0

    sget-object v1, Landroidx/work/impl/foreground/SystemForegroundService;->c:Ljava/lang/String;

    const-string/jumbo v2, "All commands completed."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Throwable;

    invoke-virtual {v0, v1, v2, v3}, Landroidx/work/l;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 120
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 121
    invoke-virtual {p0, v4}, Landroidx/work/impl/foreground/SystemForegroundService;->stopForeground(Z)V

    .line 123
    :cond_0
    const/4 v0, 0x0

    sput-object v0, Landroidx/work/impl/foreground/SystemForegroundService;->d:Landroidx/work/impl/foreground/SystemForegroundService;

    .line 124
    invoke-virtual {p0}, Landroidx/work/impl/foreground/SystemForegroundService;->stopSelf()V

    .line 125
    return-void
.end method

.method public a(I)V
    .locals 2

    .prologue
    .line 157
    iget-object v0, p0, Landroidx/work/impl/foreground/SystemForegroundService;->e:Landroid/os/Handler;

    new-instance v1, Landroidx/work/impl/foreground/SystemForegroundService$4;

    invoke-direct {v1, p0, p1}, Landroidx/work/impl/foreground/SystemForegroundService$4;-><init>(Landroidx/work/impl/foreground/SystemForegroundService;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 163
    return-void
.end method

.method public a(IILandroid/app/Notification;)V
    .locals 2

    .prologue
    .line 133
    iget-object v0, p0, Landroidx/work/impl/foreground/SystemForegroundService;->e:Landroid/os/Handler;

    new-instance v1, Landroidx/work/impl/foreground/SystemForegroundService$2;

    invoke-direct {v1, p0, p1, p3, p2}, Landroidx/work/impl/foreground/SystemForegroundService$2;-><init>(Landroidx/work/impl/foreground/SystemForegroundService;ILandroid/app/Notification;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 143
    return-void
.end method

.method public a(ILandroid/app/Notification;)V
    .locals 2

    .prologue
    .line 147
    iget-object v0, p0, Landroidx/work/impl/foreground/SystemForegroundService;->e:Landroid/os/Handler;

    new-instance v1, Landroidx/work/impl/foreground/SystemForegroundService$3;

    invoke-direct {v1, p0, p1, p2}, Landroidx/work/impl/foreground/SystemForegroundService$3;-><init>(Landroidx/work/impl/foreground/SystemForegroundService;ILandroid/app/Notification;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 153
    return-void
.end method

.method public c()V
    .locals 2

    .prologue
    .line 105
    iget-object v0, p0, Landroidx/work/impl/foreground/SystemForegroundService;->e:Landroid/os/Handler;

    new-instance v1, Landroidx/work/impl/foreground/SystemForegroundService$1;

    invoke-direct {v1, p0}, Landroidx/work/impl/foreground/SystemForegroundService$1;-><init>(Landroidx/work/impl/foreground/SystemForegroundService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 111
    return-void
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 57
    invoke-super {p0}, Landroidx/lifecycle/k;->onCreate()V

    .line 58
    sput-object p0, Landroidx/work/impl/foreground/SystemForegroundService;->d:Landroidx/work/impl/foreground/SystemForegroundService;

    .line 59
    invoke-direct {p0}, Landroidx/work/impl/foreground/SystemForegroundService;->e()V

    .line 60
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 87
    invoke-super {p0}, Landroidx/lifecycle/k;->onDestroy()V

    .line 88
    iget-object v0, p0, Landroidx/work/impl/foreground/SystemForegroundService;->a:Landroidx/work/impl/foreground/b;

    invoke-virtual {v0}, Landroidx/work/impl/foreground/b;->a()V

    .line 89
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 64
    invoke-super {p0, p1, p2, p3}, Landroidx/lifecycle/k;->onStartCommand(Landroid/content/Intent;II)I

    .line 65
    iget-boolean v0, p0, Landroidx/work/impl/foreground/SystemForegroundService;->f:Z

    if-eqz v0, :cond_0

    .line 66
    invoke-static {}, Landroidx/work/l;->a()Landroidx/work/l;

    move-result-object v0

    sget-object v1, Landroidx/work/impl/foreground/SystemForegroundService;->c:Ljava/lang/String;

    const-string/jumbo v2, "Re-initializing SystemForegroundService after a request to shut-down."

    new-array v3, v4, [Ljava/lang/Throwable;

    invoke-virtual {v0, v1, v2, v3}, Landroidx/work/l;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 70
    iget-object v0, p0, Landroidx/work/impl/foreground/SystemForegroundService;->a:Landroidx/work/impl/foreground/b;

    invoke-virtual {v0}, Landroidx/work/impl/foreground/b;->a()V

    .line 72
    invoke-direct {p0}, Landroidx/work/impl/foreground/SystemForegroundService;->e()V

    .line 74
    iput-boolean v4, p0, Landroidx/work/impl/foreground/SystemForegroundService;->f:Z

    .line 77
    :cond_0
    if-eqz p1, :cond_1

    .line 78
    iget-object v0, p0, Landroidx/work/impl/foreground/SystemForegroundService;->a:Landroidx/work/impl/foreground/b;

    invoke-virtual {v0, p1}, Landroidx/work/impl/foreground/b;->a(Landroid/content/Intent;)V

    .line 82
    :cond_1
    const/4 v0, 0x3

    return v0
.end method

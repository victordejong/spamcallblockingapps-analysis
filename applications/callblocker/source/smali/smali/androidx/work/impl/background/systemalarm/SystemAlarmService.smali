.class public Landroidx/work/impl/background/systemalarm/SystemAlarmService;
.super Landroidx/lifecycle/k;
.source "SystemAlarmService.java"

# interfaces
.implements Landroidx/work/impl/background/systemalarm/e$b;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Landroidx/work/impl/background/systemalarm/e;

.field private c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-string/jumbo v0, "SystemAlarmService"

    invoke-static {v0}, Landroidx/work/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/work/impl/background/systemalarm/SystemAlarmService;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Landroidx/lifecycle/k;-><init>()V

    return-void
.end method

.method private c()V
    .locals 1

    .prologue
    .line 93
    new-instance v0, Landroidx/work/impl/background/systemalarm/e;

    invoke-direct {v0, p0}, Landroidx/work/impl/background/systemalarm/e;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroidx/work/impl/background/systemalarm/SystemAlarmService;->b:Landroidx/work/impl/background/systemalarm/e;

    .line 94
    iget-object v0, p0, Landroidx/work/impl/background/systemalarm/SystemAlarmService;->b:Landroidx/work/impl/background/systemalarm/e;

    invoke-virtual {v0, p0}, Landroidx/work/impl/background/systemalarm/e;->a(Landroidx/work/impl/background/systemalarm/e$b;)V

    .line 95
    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    .line 82
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/work/impl/background/systemalarm/SystemAlarmService;->c:Z

    .line 83
    invoke-static {}, Landroidx/work/l;->a()Landroidx/work/l;

    move-result-object v0

    sget-object v1, Landroidx/work/impl/background/systemalarm/SystemAlarmService;->a:Ljava/lang/String;

    const-string/jumbo v2, "All commands completed in dispatcher"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Throwable;

    invoke-virtual {v0, v1, v2, v3}, Landroidx/work/l;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 85
    invoke-static {}, Landroidx/work/impl/utils/i;->a()V

    .line 88
    invoke-virtual {p0}, Landroidx/work/impl/background/systemalarm/SystemAlarmService;->stopSelf()V

    .line 89
    return-void
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 44
    invoke-super {p0}, Landroidx/lifecycle/k;->onCreate()V

    .line 45
    invoke-direct {p0}, Landroidx/work/impl/background/systemalarm/SystemAlarmService;->c()V

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/work/impl/background/systemalarm/SystemAlarmService;->c:Z

    .line 47
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 51
    invoke-super {p0}, Landroidx/lifecycle/k;->onDestroy()V

    .line 52
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/work/impl/background/systemalarm/SystemAlarmService;->c:Z

    .line 53
    iget-object v0, p0, Landroidx/work/impl/background/systemalarm/SystemAlarmService;->b:Landroidx/work/impl/background/systemalarm/e;

    invoke-virtual {v0}, Landroidx/work/impl/background/systemalarm/e;->a()V

    .line 54
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 58
    invoke-super {p0, p1, p2, p3}, Landroidx/lifecycle/k;->onStartCommand(Landroid/content/Intent;II)I

    .line 59
    iget-boolean v0, p0, Landroidx/work/impl/background/systemalarm/SystemAlarmService;->c:Z

    if-eqz v0, :cond_0

    .line 60
    invoke-static {}, Landroidx/work/l;->a()Landroidx/work/l;

    move-result-object v0

    sget-object v1, Landroidx/work/impl/background/systemalarm/SystemAlarmService;->a:Ljava/lang/String;

    const-string/jumbo v2, "Re-initializing SystemAlarmDispatcher after a request to shut-down."

    new-array v3, v4, [Ljava/lang/Throwable;

    invoke-virtual {v0, v1, v2, v3}, Landroidx/work/l;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 64
    iget-object v0, p0, Landroidx/work/impl/background/systemalarm/SystemAlarmService;->b:Landroidx/work/impl/background/systemalarm/e;

    invoke-virtual {v0}, Landroidx/work/impl/background/systemalarm/e;->a()V

    .line 66
    invoke-direct {p0}, Landroidx/work/impl/background/systemalarm/SystemAlarmService;->c()V

    .line 68
    iput-boolean v4, p0, Landroidx/work/impl/background/systemalarm/SystemAlarmService;->c:Z

    .line 71
    :cond_0
    if-eqz p1, :cond_1

    .line 72
    iget-object v0, p0, Landroidx/work/impl/background/systemalarm/SystemAlarmService;->b:Landroidx/work/impl/background/systemalarm/e;

    invoke-virtual {v0, p1, p3}, Landroidx/work/impl/background/systemalarm/e;->a(Landroid/content/Intent;I)Z

    .line 76
    :cond_1
    const/4 v0, 0x3

    return v0
.end method

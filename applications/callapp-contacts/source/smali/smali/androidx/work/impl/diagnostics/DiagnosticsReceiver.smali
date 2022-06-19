.class public Landroidx/work/impl/diagnostics/DiagnosticsReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "DiagnosticsRcvr"

    .line 34
    invoke-static {v0}, Landroidx/work/k;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/work/impl/diagnostics/DiagnosticsReceiver;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    if-nez p2, :cond_0

    return-void

    .line 41
    :cond_0
    invoke-static {}, Landroidx/work/k;->a()Landroidx/work/k;

    .line 1184
    :try_start_0
    invoke-static {p1}, Landroidx/work/impl/j;->b(Landroid/content/Context;)Landroidx/work/impl/j;

    move-result-object p1

    .line 44
    const-class p2, Landroidx/work/impl/workers/DiagnosticsWorker;

    .line 2044
    new-instance v0, Landroidx/work/m$a;

    invoke-direct {v0, p2}, Landroidx/work/m$a;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v0}, Landroidx/work/m$a;->c()Landroidx/work/v;

    move-result-object p2

    check-cast p2, Landroidx/work/m;

    .line 44
    invoke-virtual {p1, p2}, Landroidx/work/u;->a(Landroidx/work/v;)Landroidx/work/n;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 46
    invoke-static {}, Landroidx/work/k;->a()Landroidx/work/k;

    move-result-object p2

    sget-object v0, Landroidx/work/impl/diagnostics/DiagnosticsReceiver;->a:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Throwable;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "WorkManager is not initialized"

    invoke-virtual {p2, v0, p1, v1}, Landroidx/work/k;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    return-void
.end method

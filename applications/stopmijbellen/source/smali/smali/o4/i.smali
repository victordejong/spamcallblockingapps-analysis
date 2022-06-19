.class public final Lo4/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field public final synthetic a:Lo4/j;


# direct methods
.method public synthetic constructor <init>(Lo4/j;)V
    .locals 0

    iput-object p1, p0, Lo4/i;->a:Lo4/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lo4/i;->a:Lo4/j;

    .line 2
    iget-object v0, v0, Lo4/j;->b:Lp6/c;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "ServiceConnectionImpl.onServiceConnected(%s)"

    .line 3
    invoke-virtual {v0, p1, v1}, Lp6/c;->e(Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object p1, p0, Lo4/i;->a:Lo4/j;

    new-instance v0, Lo4/g;

    invoke-direct {v0, p0, p2}, Lo4/g;-><init>(Lo4/i;Landroid/os/IBinder;)V

    .line 4
    invoke-virtual {p1}, Lo4/j;->a()Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lo4/i;->a:Lo4/j;

    .line 2
    iget-object v0, v0, Lo4/j;->b:Lp6/c;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "ServiceConnectionImpl.onServiceDisconnected(%s)"

    .line 3
    invoke-virtual {v0, p1, v1}, Lp6/c;->e(Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object p1, p0, Lo4/i;->a:Lo4/j;

    new-instance v0, Lo4/h;

    invoke-direct {v0, p0}, Lo4/h;-><init>(Lo4/i;)V

    .line 4
    invoke-virtual {p1}, Lo4/j;->a()Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

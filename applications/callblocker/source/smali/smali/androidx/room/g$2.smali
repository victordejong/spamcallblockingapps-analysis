.class Landroidx/room/g$2;
.super Ljava/lang/Object;
.source "MultiInstanceInvalidationClient.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/room/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/room/g;


# direct methods
.method constructor <init>(Landroidx/room/g;)V
    .locals 0

    .prologue
    .line 99
    iput-object p1, p0, Landroidx/room/g$2;->a:Landroidx/room/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    .prologue
    .line 103
    iget-object v0, p0, Landroidx/room/g$2;->a:Landroidx/room/g;

    invoke-static {p2}, Landroidx/room/d$a;->a(Landroid/os/IBinder;)Landroidx/room/d;

    move-result-object v1

    iput-object v1, v0, Landroidx/room/g;->f:Landroidx/room/d;

    .line 104
    iget-object v0, p0, Landroidx/room/g$2;->a:Landroidx/room/g;

    iget-object v0, v0, Landroidx/room/g;->g:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroidx/room/g$2;->a:Landroidx/room/g;

    iget-object v1, v1, Landroidx/room/g;->k:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 105
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    .prologue
    .line 109
    iget-object v0, p0, Landroidx/room/g$2;->a:Landroidx/room/g;

    iget-object v0, v0, Landroidx/room/g;->g:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroidx/room/g$2;->a:Landroidx/room/g;

    iget-object v1, v1, Landroidx/room/g;->l:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 110
    iget-object v0, p0, Landroidx/room/g$2;->a:Landroidx/room/g;

    const/4 v1, 0x0

    iput-object v1, v0, Landroidx/room/g;->f:Landroidx/room/d;

    .line 111
    return-void
.end method

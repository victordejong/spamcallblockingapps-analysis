.class public Lx00$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lx00;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lx00;


# direct methods
.method public constructor <init>(Lx00;)V
    .locals 0

    iput-object p1, p0, Lx00$b;->a:Lx00;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    iget-object p1, p0, Lx00$b;->a:Lx00;

    invoke-static {p2}, Lu00$a;->b(Landroid/os/IBinder;)Lu00;

    move-result-object p2

    iput-object p2, p1, Lx00;->f:Lu00;

    iget-object p1, p0, Lx00$b;->a:Lx00;

    iget-object p2, p1, Lx00;->g:Ljava/util/concurrent/Executor;

    iget-object p1, p1, Lx00;->k:Ljava/lang/Runnable;

    invoke-interface {p2, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    iget-object p1, p0, Lx00$b;->a:Lx00;

    iget-object v0, p1, Lx00;->g:Ljava/util/concurrent/Executor;

    iget-object p1, p1, Lx00;->l:Ljava/lang/Runnable;

    invoke-interface {v0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lx00$b;->a:Lx00;

    const/4 v0, 0x0

    iput-object v0, p1, Lx00;->f:Lu00;

    iput-object v0, p1, Lx00;->a:Landroid/content/Context;

    return-void
.end method

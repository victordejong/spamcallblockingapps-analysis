.class final Landroidx/room/f$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/room/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/room/f;


# direct methods
.method constructor <init>(Landroidx/room/f;)V
    .locals 0

    .line 141
    iput-object p1, p0, Landroidx/room/f$5;->a:Landroidx/room/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 144
    iget-object v0, p0, Landroidx/room/f$5;->a:Landroidx/room/f;

    iget-object v0, v0, Landroidx/room/f;->d:Landroidx/room/e;

    iget-object v1, p0, Landroidx/room/f$5;->a:Landroidx/room/f;

    iget-object v1, v1, Landroidx/room/f;->e:Landroidx/room/e$b;

    invoke-virtual {v0, v1}, Landroidx/room/e;->b(Landroidx/room/e$b;)V

    .line 146
    :try_start_0
    iget-object v0, p0, Landroidx/room/f$5;->a:Landroidx/room/f;

    iget-object v0, v0, Landroidx/room/f;->f:Landroidx/room/c;

    if-eqz v0, :cond_0

    .line 148
    iget-object v1, p0, Landroidx/room/f$5;->a:Landroidx/room/f;

    iget-object v1, v1, Landroidx/room/f;->h:Landroidx/room/b;

    iget-object v2, p0, Landroidx/room/f$5;->a:Landroidx/room/f;

    iget v2, v2, Landroidx/room/f;->c:I

    invoke-interface {v0, v1, v2}, Landroidx/room/c;->a(Landroidx/room/b;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "ROOM"

    const-string v2, "Cannot unregister multi-instance invalidation callback"

    .line 151
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 153
    :cond_0
    :goto_0
    iget-object v0, p0, Landroidx/room/f$5;->a:Landroidx/room/f;

    iget-object v0, v0, Landroidx/room/f;->a:Landroid/content/Context;

    iget-object v1, p0, Landroidx/room/f$5;->a:Landroidx/room/f;

    iget-object v1, v1, Landroidx/room/f;->j:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    return-void
.end method

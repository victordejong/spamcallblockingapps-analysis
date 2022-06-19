.class final Landroidx/room/f$3;
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

    .line 117
    iput-object p1, p0, Landroidx/room/f$3;->a:Landroidx/room/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 121
    :try_start_0
    iget-object v0, p0, Landroidx/room/f$3;->a:Landroidx/room/f;

    iget-object v0, v0, Landroidx/room/f;->f:Landroidx/room/c;

    if-eqz v0, :cond_0

    .line 123
    iget-object v1, p0, Landroidx/room/f$3;->a:Landroidx/room/f;

    iget-object v2, v1, Landroidx/room/f;->h:Landroidx/room/b;

    iget-object v3, p0, Landroidx/room/f$3;->a:Landroidx/room/f;

    iget-object v3, v3, Landroidx/room/f;->b:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Landroidx/room/c;->a(Landroidx/room/b;Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Landroidx/room/f;->c:I

    .line 124
    iget-object v0, p0, Landroidx/room/f$3;->a:Landroidx/room/f;

    iget-object v0, v0, Landroidx/room/f;->d:Landroidx/room/e;

    iget-object v1, p0, Landroidx/room/f$3;->a:Landroidx/room/f;

    iget-object v1, v1, Landroidx/room/f;->e:Landroidx/room/e$b;

    invoke-virtual {v0, v1}, Landroidx/room/e;->a(Landroidx/room/e$b;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "ROOM"

    const-string v2, "Cannot register multi-instance invalidation callback"

    .line 127
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

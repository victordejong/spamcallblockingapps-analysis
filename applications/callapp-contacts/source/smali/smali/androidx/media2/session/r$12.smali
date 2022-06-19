.class final Landroidx/media2/session/r$12;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/session/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/media2/session/MediaSession$b;

.field final synthetic b:Landroidx/media2/session/b;

.field final synthetic c:Landroidx/media2/session/r;


# direct methods
.method constructor <init>(Landroidx/media2/session/r;Landroidx/media2/session/MediaSession$b;Landroidx/media2/session/b;)V
    .locals 0

    .line 329
    iput-object p1, p0, Landroidx/media2/session/r$12;->c:Landroidx/media2/session/r;

    iput-object p2, p0, Landroidx/media2/session/r$12;->a:Landroidx/media2/session/MediaSession$b;

    iput-object p3, p0, Landroidx/media2/session/r$12;->b:Landroidx/media2/session/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 332
    iget-object v0, p0, Landroidx/media2/session/r$12;->c:Landroidx/media2/session/r;

    iget-object v0, v0, Landroidx/media2/session/r;->e:Landroidx/media2/session/MediaSession$c;

    invoke-interface {v0}, Landroidx/media2/session/MediaSession$c;->H()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 335
    :cond_0
    iget-object v0, p0, Landroidx/media2/session/r$12;->a:Landroidx/media2/session/MediaSession$b;

    .line 1990
    iget-object v0, v0, Landroidx/media2/session/MediaSession$b;->c:Landroidx/media2/session/MediaSession$a;

    .line 335
    check-cast v0, Landroidx/media2/session/r$a;

    .line 336
    invoke-virtual {v0}, Landroidx/media2/session/r$a;->a()Landroid/os/IBinder;

    move-result-object v0

    .line 337
    iget-object v1, p0, Landroidx/media2/session/r$12;->c:Landroidx/media2/session/r;

    iget-object v1, v1, Landroidx/media2/session/r;->e:Landroidx/media2/session/MediaSession$c;

    invoke-interface {v1}, Landroidx/media2/session/MediaSession$c;->y()Landroidx/media2/session/MediaSession$d;

    iget-object v1, p0, Landroidx/media2/session/r$12;->c:Landroidx/media2/session/r;

    iget-object v1, v1, Landroidx/media2/session/r;->e:Landroidx/media2/session/MediaSession$c;

    .line 338
    invoke-interface {v1}, Landroidx/media2/session/MediaSession$c;->z()Landroidx/media2/session/MediaSession;

    .line 337
    invoke-static {}, Landroidx/media2/session/MediaSession$d;->d()Landroidx/media2/session/SessionCommandGroup;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    .line 342
    iget-object v3, p0, Landroidx/media2/session/r$12;->a:Landroidx/media2/session/MediaSession$b;

    .line 2960
    iget-boolean v3, v3, Landroidx/media2/session/MediaSession$b;->b:Z

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v3, 0x1

    :goto_1
    if-eqz v3, :cond_7

    .line 344
    sget-boolean v2, Landroidx/media2/session/r;->a:Z

    if-eqz v2, :cond_3

    .line 345
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Accepting connection, controllerInfo="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Landroidx/media2/session/r$12;->a:Landroidx/media2/session/MediaSession$b;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " allowedCommands="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_3
    if-nez v1, :cond_4

    .line 351
    new-instance v1, Landroidx/media2/session/SessionCommandGroup;

    invoke-direct {v1}, Landroidx/media2/session/SessionCommandGroup;-><init>()V

    .line 354
    :cond_4
    iget-object v2, p0, Landroidx/media2/session/r$12;->c:Landroidx/media2/session/r;

    iget-object v3, v2, Landroidx/media2/session/r;->d:Ljava/lang/Object;

    monitor-enter v3

    .line 355
    :try_start_0
    iget-object v2, p0, Landroidx/media2/session/r$12;->c:Landroidx/media2/session/r;

    iget-object v2, v2, Landroidx/media2/session/r;->c:Landroidx/media2/session/a;

    iget-object v4, p0, Landroidx/media2/session/r$12;->a:Landroidx/media2/session/MediaSession$b;

    invoke-virtual {v2, v4}, Landroidx/media2/session/a;->b(Landroidx/media2/session/MediaSession$b;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "MediaSessionStub"

    .line 356
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Controller "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Landroidx/media2/session/r$12;->a:Landroidx/media2/session/MediaSession$b;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " has sent connection request multiple times"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    :cond_5
    iget-object v2, p0, Landroidx/media2/session/r$12;->c:Landroidx/media2/session/r;

    iget-object v2, v2, Landroidx/media2/session/r;->c:Landroidx/media2/session/a;

    iget-object v4, p0, Landroidx/media2/session/r$12;->a:Landroidx/media2/session/MediaSession$b;

    invoke-virtual {v2, v0, v4, v1}, Landroidx/media2/session/a;->a(Ljava/lang/Object;Landroidx/media2/session/MediaSession$b;Landroidx/media2/session/SessionCommandGroup;)V

    .line 361
    iget-object v0, p0, Landroidx/media2/session/r$12;->c:Landroidx/media2/session/r;

    iget-object v0, v0, Landroidx/media2/session/r;->c:Landroidx/media2/session/a;

    iget-object v2, p0, Landroidx/media2/session/r$12;->a:Landroidx/media2/session/MediaSession$b;

    .line 362
    invoke-virtual {v0, v2}, Landroidx/media2/session/a;->c(Landroidx/media2/session/MediaSession$b;)Landroidx/media2/session/v;

    move-result-object v0

    .line 363
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 371
    new-instance v2, Landroidx/media2/session/ConnectionResult;

    iget-object v3, p0, Landroidx/media2/session/r$12;->c:Landroidx/media2/session/r;

    iget-object v4, v3, Landroidx/media2/session/r;->e:Landroidx/media2/session/MediaSession$c;

    invoke-direct {v2, v3, v4, v1}, Landroidx/media2/session/ConnectionResult;-><init>(Landroidx/media2/session/r;Landroidx/media2/session/MediaSession$c;Landroidx/media2/session/SessionCommandGroup;)V

    .line 376
    iget-object v1, p0, Landroidx/media2/session/r$12;->c:Landroidx/media2/session/r;

    iget-object v1, v1, Landroidx/media2/session/r;->e:Landroidx/media2/session/MediaSession$c;

    invoke-interface {v1}, Landroidx/media2/session/MediaSession$c;->H()Z

    move-result v1

    if-eqz v1, :cond_6

    return-void

    .line 380
    :cond_6
    :try_start_1
    iget-object v1, p0, Landroidx/media2/session/r$12;->b:Landroidx/media2/session/b;

    invoke-virtual {v0}, Landroidx/media2/session/v;->a()I

    move-result v0

    .line 381
    invoke-static {v2}, Landroidx/media2/common/MediaParcelUtils;->a(Landroidx/versionedparcelable/c;)Landroidx/versionedparcelable/ParcelImpl;

    move-result-object v2

    .line 380
    invoke-interface {v1, v0, v2}, Landroidx/media2/session/b;->c(ILandroidx/versionedparcelable/ParcelImpl;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 386
    :catch_0
    iget-object v0, p0, Landroidx/media2/session/r$12;->c:Landroidx/media2/session/r;

    iget-object v0, v0, Landroidx/media2/session/r;->e:Landroidx/media2/session/MediaSession$c;

    invoke-interface {v0}, Landroidx/media2/session/MediaSession$c;->y()Landroidx/media2/session/MediaSession$d;

    iget-object v0, p0, Landroidx/media2/session/r$12;->c:Landroidx/media2/session/r;

    iget-object v0, v0, Landroidx/media2/session/r;->e:Landroidx/media2/session/MediaSession$c;

    .line 387
    invoke-interface {v0}, Landroidx/media2/session/MediaSession$c;->z()Landroidx/media2/session/MediaSession;

    return-void

    :catchall_0
    move-exception v0

    .line 363
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 389
    :cond_7
    sget-boolean v0, Landroidx/media2/session/r;->a:Z

    if-eqz v0, :cond_8

    .line 390
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Rejecting connection, controllerInfo="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/media2/session/r$12;->a:Landroidx/media2/session/MediaSession$b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 393
    :cond_8
    :try_start_3
    iget-object v0, p0, Landroidx/media2/session/r$12;->b:Landroidx/media2/session/b;

    invoke-interface {v0, v2}, Landroidx/media2/session/b;->b(I)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    :catch_1
    return-void
.end method

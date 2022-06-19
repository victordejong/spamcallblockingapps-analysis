.class public Lfw$a$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfw$a;->h(Law;Landroidx/versionedparcelable/ParcelImpl;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:I

.field public final synthetic c:I

.field public final synthetic d:Landroid/os/Bundle;

.field public final synthetic f:Law;

.field public final synthetic g:Lfw$a;


# direct methods
.method public constructor <init>(Lfw$a;Ljava/lang/String;IILandroid/os/Bundle;Law;)V
    .locals 0

    iput-object p1, p0, Lfw$a$a;->g:Lfw$a;

    iput-object p2, p0, Lfw$a$a;->a:Ljava/lang/String;

    iput p3, p0, Lfw$a$a;->b:I

    iput p4, p0, Lfw$a$a;->c:I

    iput-object p5, p0, Lfw$a$a;->d:Landroid/os/Bundle;

    iput-object p6, p0, Lfw$a$a;->f:Law;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    const-string v0, "Notifying the controller of its disconnection"

    const-string v1, "MSS2ImplBase"

    const/4 v2, 0x0

    const/4 v3, 0x1

    :try_start_0
    iget-object v4, p0, Lfw$a$a;->g:Lfw$a;

    iget-object v4, v4, Lfw$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lfw;

    if-nez v4, :cond_0

    const-string v4, "ServiceImpl isn\'t available"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_1
    iget-object v0, p0, Lfw$a$a;->f:Law;

    invoke-interface {v0, v2}, Law;->a(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    return-void

    :cond_0
    :try_start_2
    invoke-virtual {v4}, Lfw;->g()Landroidx/media2/session/MediaSessionService;

    move-result-object v4

    if-nez v4, :cond_1

    const-string v4, "Service isn\'t available"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_3
    iget-object v0, p0, Lfw$a$a;->f:Law;

    invoke-interface {v0, v2}, Law;->a(I)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    :catch_1
    return-void

    :cond_1
    :try_start_4
    new-instance v5, Lpf$b;

    iget-object v6, p0, Lfw$a$a;->a:Ljava/lang/String;

    iget v7, p0, Lfw$a$a;->b:I

    iget v8, p0, Lfw$a$a;->c:I

    invoke-direct {v5, v6, v7, v8}, Lpf$b;-><init>(Ljava/lang/String;II)V

    iget-object v6, p0, Lfw$a$a;->g:Lfw$a;

    iget-object v6, v6, Lfw$a;->c:Lpf;

    invoke-virtual {v6, v5}, Lpf;->b(Lpf$b;)Z

    move-result v6

    new-instance v7, Landroidx/media2/session/MediaSession$b;

    const/4 v8, 0x0

    iget-object v9, p0, Lfw$a$a;->d:Landroid/os/Bundle;

    invoke-direct {v7, v5, v6, v8, v9}, Landroidx/media2/session/MediaSession$b;-><init>(Lpf$b;ZLandroidx/media2/session/MediaSession$a;Landroid/os/Bundle;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Handling incoming connection request from the controller="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    invoke-virtual {v4, v7}, Landroidx/media2/session/MediaSessionService;->d(Landroidx/media2/session/MediaSession$b;)Landroidx/media2/session/MediaSession;

    move-result-object v8

    if-nez v8, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Rejecting incoming connection request from the controller="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_6
    iget-object v0, p0, Lfw$a$a;->f:Law;

    invoke-interface {v0, v2}, Law;->a(I)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_2

    :catch_2
    return-void

    :cond_2
    :try_start_7
    invoke-virtual {v4, v8}, Landroidx/media2/session/MediaSessionService;->a(Landroidx/media2/session/MediaSession;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    iget-object v9, p0, Lfw$a$a;->f:Law;

    iget-object v10, p0, Lfw$a$a;->a:Ljava/lang/String;

    iget v11, p0, Lfw$a$a;->b:I

    iget v12, p0, Lfw$a$a;->c:I

    iget-object v13, p0, Lfw$a$a;->d:Landroid/os/Bundle;

    invoke-virtual/range {v8 .. v13}, Landroidx/media2/session/MediaSession;->h(Law;Ljava/lang/String;IILandroid/os/Bundle;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    const/4 v3, 0x0

    goto :goto_1

    :catchall_0
    move-exception v4

    const/4 v3, 0x0

    goto :goto_2

    :catch_3
    move-exception v4

    const/4 v3, 0x0

    goto :goto_0

    :catch_4
    move-exception v4

    :goto_0
    :try_start_9
    const-string v5, "Failed to add a session to session service"

    invoke-static {v1, v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :goto_1
    if-eqz v3, :cond_3

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_a
    iget-object v0, p0, Lfw$a$a;->f:Law;

    invoke-interface {v0, v2}, Law;->a(I)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_5

    :catch_5
    :cond_3
    return-void

    :catchall_1
    move-exception v4

    :goto_2
    if-eqz v3, :cond_4

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_b
    iget-object v0, p0, Lfw$a$a;->f:Law;

    invoke-interface {v0, v2}, Law;->a(I)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_b} :catch_6

    :catch_6
    :cond_4
    throw v4
.end method

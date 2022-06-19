.class public Lfw;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroidx/media2/session/MediaSessionService$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfw$a;
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/Object;

.field public b:Lfw$a;

.field public c:Landroidx/media2/session/MediaSessionService;

.field public d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroidx/media2/session/MediaSession;",
            ">;"
        }
    .end annotation
.end field

.field public e:Lew;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lfw;->a:Ljava/lang/Object;

    new-instance v0, Lb4;

    invoke-direct {v0}, Lb4;-><init>()V

    iput-object v0, p0, Lfw;->d:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 5

    invoke-virtual {p0}, Lfw;->g()Landroidx/media2/session/MediaSessionService;

    move-result-object v0

    const-string v1, "MSS2ImplBase"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const-string p1, "Service hasn\'t created before onBind()"

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string v3, "androidx.media2.session.MediaSessionService"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "android.media.browse.MediaBrowserService"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    return-object v2

    :cond_1
    new-instance p1, Lpf$b;

    const/4 v4, 0x0

    invoke-direct {p1, v3, v4, v4}, Lpf$b;-><init>(Ljava/lang/String;II)V

    new-instance v3, Landroidx/media2/session/MediaSession$b;

    invoke-direct {v3, p1, v4, v2, v2}, Landroidx/media2/session/MediaSession$b;-><init>(Lpf$b;ZLandroidx/media2/session/MediaSession$a;Landroid/os/Bundle;)V

    invoke-virtual {v0, v3}, Landroidx/media2/session/MediaSessionService;->d(Landroidx/media2/session/MediaSession$b;)Landroidx/media2/session/MediaSession;

    move-result-object p1

    if-nez p1, :cond_2

    const-string p1, "Rejecting incoming connection request from legacy media browsers."

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_2
    invoke-virtual {p0, p1}, Lfw;->c(Landroidx/media2/session/MediaSession;)V

    invoke-virtual {p1}, Landroidx/media2/session/MediaSession;->e()Landroid/os/IBinder;

    move-result-object p1

    return-object p1

    :cond_3
    invoke-virtual {p0}, Lfw;->h()Landroid/os/IBinder;

    move-result-object p1

    return-object p1
.end method

.method public b(Landroidx/media2/session/MediaSessionService;)V
    .locals 2

    iget-object v0, p0, Lfw;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-object p1, p0, Lfw;->c:Landroidx/media2/session/MediaSessionService;

    new-instance v1, Lfw$a;

    invoke-direct {v1, p0}, Lfw$a;-><init>(Lfw;)V

    iput-object v1, p0, Lfw;->b:Lfw$a;

    new-instance v1, Lew;

    invoke-direct {v1, p1}, Lew;-><init>(Landroidx/media2/session/MediaSessionService;)V

    iput-object v1, p0, Lfw;->e:Lew;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public c(Landroidx/media2/session/MediaSession;)V
    .locals 4

    iget-object v0, p0, Lfw;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lfw;->d:Ljava/util/Map;

    invoke-virtual {p1}, Landroidx/media2/session/MediaSession;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media2/session/MediaSession;

    if-eqz v1, :cond_1

    if-ne v1, p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v1, "Session ID should be unique"

    invoke-direct {p1, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    iget-object v2, p0, Lfw;->d:Ljava/util/Map;

    invoke-virtual {p1}, Landroidx/media2/session/MediaSession;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v1, :cond_2

    iget-object v0, p0, Lfw;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_1
    iget-object v1, p0, Lfw;->e:Lew;

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {p1}, Landroidx/media2/session/MediaSession;->p()Landroidx/media2/common/SessionPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media2/common/SessionPlayer;->y()I

    move-result v0

    invoke-virtual {v1, p1, v0}, Lew;->f(Landroidx/media2/session/MediaSession;I)V

    invoke-virtual {p1}, Landroidx/media2/session/MediaSession;->getCallback()Landroidx/media2/session/MediaSession$d;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroidx/media2/session/MediaSession$d;->a(Landroidx/media2/session/MediaSession$d$a;)V

    goto :goto_1

    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :cond_2
    :goto_1
    return-void

    :catchall_1
    move-exception p1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1
.end method

.method public d()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/media2/session/MediaSession;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lfw;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lfw;->d:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public e(Landroidx/media2/session/MediaSession;)Landroidx/media2/session/MediaSessionService$a;
    .locals 2

    iget-object v0, p0, Lfw;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lfw;->e:Lew;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Lew;->g(Landroidx/media2/session/MediaSession;)Landroidx/media2/session/MediaSessionService$a;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Service hasn\'t created"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public f(Landroid/content/Intent;II)I
    .locals 5

    const/4 p2, 0x1

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    const-string v0, "android.intent.action.MEDIA_BUTTON"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lfw;->g()Landroidx/media2/session/MediaSessionService;

    move-result-object p3

    const-string v1, "MSS2ImplBase"

    if-nez p3, :cond_2

    const-string v2, "Service hasn\'t created"

    invoke-static {v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2}, Landroidx/media2/session/MediaSession;->g(Landroid/net/Uri;)Landroidx/media2/session/MediaSession;

    move-result-object v2

    if-nez v2, :cond_3

    new-instance v2, Lpf$b;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3, v3}, Lpf$b;-><init>(Ljava/lang/String;II)V

    new-instance v0, Landroidx/media2/session/MediaSession$b;

    const/4 v4, 0x0

    invoke-direct {v0, v2, v3, v4, v4}, Landroidx/media2/session/MediaSession$b;-><init>(Lpf$b;ZLandroidx/media2/session/MediaSession$a;Landroid/os/Bundle;)V

    invoke-virtual {p3, v0}, Landroidx/media2/session/MediaSessionService;->d(Landroidx/media2/session/MediaSession$b;)Landroidx/media2/session/MediaSession;

    move-result-object v2

    :cond_3
    if-nez v2, :cond_4

    const-string p1, "Rejecting wake-up of the service from media key events."

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    const-string p3, "android.intent.extra.KEY_EVENT"

    invoke-virtual {p1, p3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/view/KeyEvent;

    if-eqz p1, :cond_5

    invoke-virtual {v2}, Landroidx/media2/session/MediaSession;->j()Landroid/support/v4/media/session/MediaSessionCompat;

    move-result-object p3

    invoke-virtual {p3}, Landroid/support/v4/media/session/MediaSessionCompat;->getController()Landroid/support/v4/media/session/MediaControllerCompat;

    move-result-object p3

    invoke-virtual {p3, p1}, Landroid/support/v4/media/session/MediaControllerCompat;->dispatchMediaButtonEvent(Landroid/view/KeyEvent;)Z

    :cond_5
    :goto_0
    return p2
.end method

.method public g()Landroidx/media2/session/MediaSessionService;
    .locals 2

    iget-object v0, p0, Lfw;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lfw;->c:Landroidx/media2/session/MediaSessionService;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public h()Landroid/os/IBinder;
    .locals 2

    iget-object v0, p0, Lfw;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lfw;->b:Lfw$a;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcw$a;->asBinder()Landroid/os/IBinder;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onDestroy()V
    .locals 3

    iget-object v0, p0, Lfw;->a:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Lfw;->c:Landroidx/media2/session/MediaSessionService;

    iget-object v2, p0, Lfw;->b:Lfw$a;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lfw$a;->close()V

    iput-object v1, p0, Lfw;->b:Lfw$a;

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

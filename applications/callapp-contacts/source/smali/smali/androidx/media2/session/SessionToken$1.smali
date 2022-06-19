.class final Landroidx/media2/session/SessionToken$1;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/session/SessionToken;->a(Landroid/content/Context;Landroid/support/v4/media/session/MediaSessionCompat$Token;Landroidx/media2/session/SessionToken$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/media2/session/SessionToken$a;

.field final synthetic b:Landroid/support/v4/media/session/MediaControllerCompat;

.field final synthetic c:Landroid/support/v4/media/session/MediaSessionCompat$Token;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:I

.field final synthetic f:Landroid/os/HandlerThread;


# direct methods
.method constructor <init>(Landroid/os/Looper;Landroidx/media2/session/SessionToken$a;Landroid/support/v4/media/session/MediaControllerCompat;Landroid/support/v4/media/session/MediaSessionCompat$Token;Ljava/lang/String;ILandroid/os/HandlerThread;)V
    .locals 0

    .line 286
    iput-object p2, p0, Landroidx/media2/session/SessionToken$1;->a:Landroidx/media2/session/SessionToken$a;

    iput-object p3, p0, Landroidx/media2/session/SessionToken$1;->b:Landroid/support/v4/media/session/MediaControllerCompat;

    iput-object p4, p0, Landroidx/media2/session/SessionToken$1;->c:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    iput-object p5, p0, Landroidx/media2/session/SessionToken$1;->d:Ljava/lang/String;

    iput p6, p0, Landroidx/media2/session/SessionToken$1;->e:I

    iput-object p7, p0, Landroidx/media2/session/SessionToken$1;->f:Landroid/os/HandlerThread;

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 6

    .line 289
    iget-object v0, p0, Landroidx/media2/session/SessionToken$1;->a:Landroidx/media2/session/SessionToken$a;

    monitor-enter v0

    .line 290
    :try_start_0
    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x3e8

    if-eq v1, v2, :cond_0

    .line 291
    monitor-exit v0

    return-void

    .line 293
    :cond_0
    iget-object v1, p0, Landroidx/media2/session/SessionToken$1;->b:Landroid/support/v4/media/session/MediaControllerCompat;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/support/v4/media/session/MediaControllerCompat$a;

    invoke-virtual {v1, p1}, Landroid/support/v4/media/session/MediaControllerCompat;->a(Landroid/support/v4/media/session/MediaControllerCompat$a;)V

    .line 297
    new-instance p1, Landroidx/media2/session/SessionToken;

    new-instance v1, Landroidx/media2/session/SessionTokenImplLegacy;

    iget-object v2, p0, Landroidx/media2/session/SessionToken$1;->c:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    iget-object v3, p0, Landroidx/media2/session/SessionToken$1;->d:Ljava/lang/String;

    iget v4, p0, Landroidx/media2/session/SessionToken$1;->e:I

    iget-object v5, p0, Landroidx/media2/session/SessionToken$1;->b:Landroid/support/v4/media/session/MediaControllerCompat;

    .line 298
    invoke-virtual {v5}, Landroid/support/v4/media/session/MediaControllerCompat;->h()Landroid/os/Bundle;

    move-result-object v5

    invoke-direct {v1, v2, v3, v4, v5}, Landroidx/media2/session/SessionTokenImplLegacy;-><init>(Landroid/support/v4/media/session/MediaSessionCompat$Token;Ljava/lang/String;ILandroid/os/Bundle;)V

    invoke-direct {p1, v1}, Landroidx/media2/session/SessionToken;-><init>(Landroidx/media2/session/SessionToken$SessionTokenImpl;)V

    .line 302
    iget-object v1, p0, Landroidx/media2/session/SessionToken$1;->c:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    invoke-virtual {v1, p1}, Landroid/support/v4/media/session/MediaSessionCompat$Token;->setSession2Token(Landroidx/versionedparcelable/c;)V

    .line 304
    iget-object v1, p0, Landroidx/media2/session/SessionToken$1;->a:Landroidx/media2/session/SessionToken$a;

    iget-object v2, p0, Landroidx/media2/session/SessionToken$1;->c:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    invoke-interface {v1, v2, p1}, Landroidx/media2/session/SessionToken$a;->onSessionTokenCreated(Landroid/support/v4/media/session/MediaSessionCompat$Token;Landroidx/media2/session/SessionToken;)V

    .line 305
    iget-object p1, p0, Landroidx/media2/session/SessionToken$1;->f:Landroid/os/HandlerThread;

    invoke-static {p1}, Landroidx/media2/session/SessionToken;->a(Landroid/os/HandlerThread;)V

    .line 306
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

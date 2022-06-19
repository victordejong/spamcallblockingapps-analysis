.class final Landroidx/media2/session/SessionToken$2;
.super Landroid/support/v4/media/session/MediaControllerCompat$a;
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
.field final synthetic d:Landroidx/media2/session/SessionToken$a;

.field final synthetic e:Landroid/os/Handler;

.field final synthetic f:Landroid/support/v4/media/session/MediaControllerCompat;

.field final synthetic g:Landroid/support/v4/media/session/MediaSessionCompat$Token;

.field final synthetic h:Ljava/lang/String;

.field final synthetic i:I

.field final synthetic j:Landroid/os/HandlerThread;


# direct methods
.method constructor <init>(Landroidx/media2/session/SessionToken$a;Landroid/os/Handler;Landroid/support/v4/media/session/MediaControllerCompat;Landroid/support/v4/media/session/MediaSessionCompat$Token;Ljava/lang/String;ILandroid/os/HandlerThread;)V
    .locals 0

    .line 310
    iput-object p1, p0, Landroidx/media2/session/SessionToken$2;->d:Landroidx/media2/session/SessionToken$a;

    iput-object p2, p0, Landroidx/media2/session/SessionToken$2;->e:Landroid/os/Handler;

    iput-object p3, p0, Landroidx/media2/session/SessionToken$2;->f:Landroid/support/v4/media/session/MediaControllerCompat;

    iput-object p4, p0, Landroidx/media2/session/SessionToken$2;->g:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    iput-object p5, p0, Landroidx/media2/session/SessionToken$2;->h:Ljava/lang/String;

    iput p6, p0, Landroidx/media2/session/SessionToken$2;->i:I

    iput-object p7, p0, Landroidx/media2/session/SessionToken$2;->j:Landroid/os/HandlerThread;

    invoke-direct {p0}, Landroid/support/v4/media/session/MediaControllerCompat$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 7

    .line 314
    iget-object v0, p0, Landroidx/media2/session/SessionToken$2;->d:Landroidx/media2/session/SessionToken$a;

    monitor-enter v0

    .line 315
    :try_start_0
    iget-object v1, p0, Landroidx/media2/session/SessionToken$2;->e:Landroid/os/Handler;

    const/16 v2, 0x3e8

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 316
    iget-object v1, p0, Landroidx/media2/session/SessionToken$2;->f:Landroid/support/v4/media/session/MediaControllerCompat;

    invoke-virtual {v1, p0}, Landroid/support/v4/media/session/MediaControllerCompat;->a(Landroid/support/v4/media/session/MediaControllerCompat$a;)V

    .line 321
    iget-object v1, p0, Landroidx/media2/session/SessionToken$2;->g:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    invoke-virtual {v1}, Landroid/support/v4/media/session/MediaSessionCompat$Token;->getSession2Token()Landroidx/versionedparcelable/c;

    move-result-object v1

    instance-of v1, v1, Landroidx/media2/session/SessionToken;

    if-eqz v1, :cond_0

    .line 324
    iget-object v1, p0, Landroidx/media2/session/SessionToken$2;->g:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    invoke-virtual {v1}, Landroid/support/v4/media/session/MediaSessionCompat$Token;->getSession2Token()Landroidx/versionedparcelable/c;

    move-result-object v1

    check-cast v1, Landroidx/media2/session/SessionToken;

    goto :goto_0

    .line 327
    :cond_0
    new-instance v1, Landroidx/media2/session/SessionToken;

    new-instance v2, Landroidx/media2/session/SessionTokenImplLegacy;

    iget-object v3, p0, Landroidx/media2/session/SessionToken$2;->g:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    iget-object v4, p0, Landroidx/media2/session/SessionToken$2;->h:Ljava/lang/String;

    iget v5, p0, Landroidx/media2/session/SessionToken$2;->i:I

    iget-object v6, p0, Landroidx/media2/session/SessionToken$2;->f:Landroid/support/v4/media/session/MediaControllerCompat;

    .line 328
    invoke-virtual {v6}, Landroid/support/v4/media/session/MediaControllerCompat;->h()Landroid/os/Bundle;

    move-result-object v6

    invoke-direct {v2, v3, v4, v5, v6}, Landroidx/media2/session/SessionTokenImplLegacy;-><init>(Landroid/support/v4/media/session/MediaSessionCompat$Token;Ljava/lang/String;ILandroid/os/Bundle;)V

    invoke-direct {v1, v2}, Landroidx/media2/session/SessionToken;-><init>(Landroidx/media2/session/SessionToken$SessionTokenImpl;)V

    .line 331
    iget-object v2, p0, Landroidx/media2/session/SessionToken$2;->g:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    invoke-virtual {v2, v1}, Landroid/support/v4/media/session/MediaSessionCompat$Token;->setSession2Token(Landroidx/versionedparcelable/c;)V

    .line 334
    :goto_0
    iget-object v2, p0, Landroidx/media2/session/SessionToken$2;->d:Landroidx/media2/session/SessionToken$a;

    iget-object v3, p0, Landroidx/media2/session/SessionToken$2;->g:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    invoke-interface {v2, v3, v1}, Landroidx/media2/session/SessionToken$a;->onSessionTokenCreated(Landroid/support/v4/media/session/MediaSessionCompat$Token;Landroidx/media2/session/SessionToken;)V

    .line 335
    iget-object v1, p0, Landroidx/media2/session/SessionToken$2;->j:Landroid/os/HandlerThread;

    invoke-static {v1}, Landroidx/media2/session/SessionToken;->a(Landroid/os/HandlerThread;)V

    .line 336
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

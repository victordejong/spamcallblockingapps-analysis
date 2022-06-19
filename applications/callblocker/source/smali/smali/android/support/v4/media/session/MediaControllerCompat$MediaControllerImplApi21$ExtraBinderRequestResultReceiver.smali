.class Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21$ExtraBinderRequestResultReceiver;
.super Landroid/os/ResultReceiver;
.source "MediaControllerCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ExtraBinderRequestResultReceiver"
.end annotation


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;",
            ">;"
        }
    .end annotation
.end field


# virtual methods
.method protected onReceiveResult(ILandroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 2333
    iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21$ExtraBinderRequestResultReceiver;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;

    .line 2334
    if-eqz v0, :cond_0

    if-nez p2, :cond_1

    .line 2347
    :cond_0
    :goto_0
    return-void

    .line 2337
    :cond_1
    iget-object v1, v0, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 2338
    :try_start_0
    iget-object v2, v0, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;->b:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    const-string/jumbo v3, "android.support.v4.media.session.EXTRA_BINDER"

    .line 2340
    invoke-static {p2, v3}, Landroidx/core/app/d;->a(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    .line 2339
    invoke-static {v3}, Landroid/support/v4/media/session/b$a;->a(Landroid/os/IBinder;)Landroid/support/v4/media/session/b;

    move-result-object v3

    .line 2338
    invoke-virtual {v2, v3}, Landroid/support/v4/media/session/MediaSessionCompat$Token;->a(Landroid/support/v4/media/session/b;)V

    .line 2342
    iget-object v2, v0, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;->b:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    const-string/jumbo v3, "android.support.v4.media.session.SESSION_TOKEN2"

    .line 2343
    invoke-static {p2, v3}, Landroidx/versionedparcelable/a;->a(Landroid/os/Bundle;Ljava/lang/String;)Landroidx/versionedparcelable/c;

    move-result-object v3

    .line 2342
    invoke-virtual {v2, v3}, Landroid/support/v4/media/session/MediaSessionCompat$Token;->a(Landroidx/versionedparcelable/c;)V

    .line 2345
    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;->a()V

    .line 2346
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

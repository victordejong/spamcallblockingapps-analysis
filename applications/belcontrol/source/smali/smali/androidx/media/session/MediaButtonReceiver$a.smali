.class public Landroidx/media/session/MediaButtonReceiver$a;
.super Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media/session/MediaButtonReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Landroid/content/Intent;

.field public final c:Landroid/content/BroadcastReceiver$PendingResult;

.field public d:Landroid/support/v4/media/MediaBrowserCompat;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;Landroid/content/BroadcastReceiver$PendingResult;)V
    .locals 0

    invoke-direct {p0}, Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback;-><init>()V

    iput-object p1, p0, Landroidx/media/session/MediaButtonReceiver$a;->a:Landroid/content/Context;

    iput-object p2, p0, Landroidx/media/session/MediaButtonReceiver$a;->b:Landroid/content/Intent;

    iput-object p3, p0, Landroidx/media/session/MediaButtonReceiver$a;->c:Landroid/content/BroadcastReceiver$PendingResult;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Landroidx/media/session/MediaButtonReceiver$a;->d:Landroid/support/v4/media/MediaBrowserCompat;

    invoke-virtual {v0}, Landroid/support/v4/media/MediaBrowserCompat;->disconnect()V

    iget-object v0, p0, Landroidx/media/session/MediaButtonReceiver$a;->c:Landroid/content/BroadcastReceiver$PendingResult;

    invoke-virtual {v0}, Landroid/content/BroadcastReceiver$PendingResult;->finish()V

    return-void
.end method

.method public b(Landroid/support/v4/media/MediaBrowserCompat;)V
    .locals 0

    iput-object p1, p0, Landroidx/media/session/MediaButtonReceiver$a;->d:Landroid/support/v4/media/MediaBrowserCompat;

    return-void
.end method

.method public onConnected()V
    .locals 3

    new-instance v0, Landroid/support/v4/media/session/MediaControllerCompat;

    iget-object v1, p0, Landroidx/media/session/MediaButtonReceiver$a;->a:Landroid/content/Context;

    iget-object v2, p0, Landroidx/media/session/MediaButtonReceiver$a;->d:Landroid/support/v4/media/MediaBrowserCompat;

    invoke-virtual {v2}, Landroid/support/v4/media/MediaBrowserCompat;->getSessionToken()Landroid/support/v4/media/session/MediaSessionCompat$Token;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/support/v4/media/session/MediaControllerCompat;-><init>(Landroid/content/Context;Landroid/support/v4/media/session/MediaSessionCompat$Token;)V

    iget-object v1, p0, Landroidx/media/session/MediaButtonReceiver$a;->b:Landroid/content/Intent;

    const-string v2, "android.intent.extra.KEY_EVENT"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/view/KeyEvent;

    invoke-virtual {v0, v1}, Landroid/support/v4/media/session/MediaControllerCompat;->dispatchMediaButtonEvent(Landroid/view/KeyEvent;)Z

    invoke-virtual {p0}, Landroidx/media/session/MediaButtonReceiver$a;->a()V

    return-void
.end method

.method public onConnectionFailed()V
    .locals 0

    invoke-virtual {p0}, Landroidx/media/session/MediaButtonReceiver$a;->a()V

    return-void
.end method

.method public onConnectionSuspended()V
    .locals 0

    invoke-virtual {p0}, Landroidx/media/session/MediaButtonReceiver$a;->a()V

    return-void
.end method

.class public final Lzx$o;
.super Landroid/support/v4/media/session/MediaControllerCompat$Callback;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "o"
.end annotation


# instance fields
.field public final synthetic a:Lzx;


# direct methods
.method public constructor <init>(Lzx;)V
    .locals 0

    iput-object p1, p0, Lzx$o;->a:Lzx;

    invoke-direct {p0}, Landroid/support/v4/media/session/MediaControllerCompat$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public onMetadataChanged(Landroid/support/v4/media/MediaMetadataCompat;)V
    .locals 1

    iget-object v0, p0, Lzx$o;->a:Lzx;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/support/v4/media/MediaMetadataCompat;->getDescription()Landroid/support/v4/media/MediaDescriptionCompat;

    move-result-object p1

    :goto_0
    iput-object p1, v0, Lzx;->U:Landroid/support/v4/media/MediaDescriptionCompat;

    iget-object p1, p0, Lzx$o;->a:Lzx;

    invoke-virtual {p1}, Lzx;->B()V

    iget-object p1, p0, Lzx$o;->a:Lzx;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lzx;->A(Z)V

    return-void
.end method

.method public onPlaybackStateChanged(Landroid/support/v4/media/session/PlaybackStateCompat;)V
    .locals 1

    iget-object v0, p0, Lzx$o;->a:Lzx;

    iput-object p1, v0, Lzx;->T:Landroid/support/v4/media/session/PlaybackStateCompat;

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Lzx;->A(Z)V

    return-void
.end method

.method public onSessionDestroyed()V
    .locals 2

    iget-object v0, p0, Lzx$o;->a:Lzx;

    iget-object v1, v0, Lzx;->R:Landroid/support/v4/media/session/MediaControllerCompat;

    if-eqz v1, :cond_0

    iget-object v0, v0, Lzx;->S:Lzx$o;

    invoke-virtual {v1, v0}, Landroid/support/v4/media/session/MediaControllerCompat;->unregisterCallback(Landroid/support/v4/media/session/MediaControllerCompat$Callback;)V

    iget-object v0, p0, Lzx$o;->a:Lzx;

    const/4 v1, 0x0

    iput-object v1, v0, Lzx;->R:Landroid/support/v4/media/session/MediaControllerCompat;

    :cond_0
    return-void
.end method

.class public interface abstract Landroidx/media2/session/MediaSession$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/session/MediaSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "c"
.end annotation


# virtual methods
.method public abstract getCallback()Landroidx/media2/session/MediaSession$d;
.end method

.method public abstract getId()Ljava/lang/String;
.end method

.method public abstract getSessionActivity()Landroid/app/PendingIntent;
.end method

.method public abstract getUri()Landroid/net/Uri;
.end method

.method public abstract i()Landroid/os/IBinder;
.end method

.method public abstract isClosed()Z
.end method

.method public abstract j()Landroid/support/v4/media/session/MediaSessionCompat;
.end method

.method public abstract p()Landroidx/media2/common/SessionPlayer;
.end method

.method public abstract z(Law;Ljava/lang/String;IILandroid/os/Bundle;)V
.end method

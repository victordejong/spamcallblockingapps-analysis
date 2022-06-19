.class final Landroid/support/v4/media/session/MediaControllerCompat$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/media/session/MediaControllerCompat$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/session/MediaControllerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# instance fields
.field private a:Landroid/support/v4/media/session/b;

.field private b:Landroid/support/v4/media/session/MediaControllerCompat$e;

.field private c:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Landroid/support/v4/media/session/MediaSessionCompat$Token;)V
    .locals 0

    .line 1510
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1511
    invoke-virtual {p1}, Landroid/support/v4/media/session/MediaSessionCompat$Token;->getToken()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/IBinder;

    invoke-static {p1}, Landroid/support/v4/media/session/b$a;->a(Landroid/os/IBinder;)Landroid/support/v4/media/session/b;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/media/session/MediaControllerCompat$c;->a:Landroid/support/v4/media/session/b;

    return-void
.end method


# virtual methods
.method public final a()Landroid/support/v4/media/session/MediaControllerCompat$e;
    .locals 2

    .line 1557
    iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$c;->b:Landroid/support/v4/media/session/MediaControllerCompat$e;

    if-nez v0, :cond_0

    .line 1558
    new-instance v0, Landroid/support/v4/media/session/MediaControllerCompat$g;

    iget-object v1, p0, Landroid/support/v4/media/session/MediaControllerCompat$c;->a:Landroid/support/v4/media/session/b;

    invoke-direct {v0, v1}, Landroid/support/v4/media/session/MediaControllerCompat$g;-><init>(Landroid/support/v4/media/session/b;)V

    iput-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$c;->b:Landroid/support/v4/media/session/MediaControllerCompat$e;

    .line 1561
    :cond_0
    iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$c;->b:Landroid/support/v4/media/session/MediaControllerCompat$e;

    return-object v0
.end method

.method public final a(II)V
    .locals 2

    .line 1732
    :try_start_0
    iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$c;->a:Landroid/support/v4/media/session/b;

    const/4 v1, 0x0

    invoke-interface {v0, p1, p2, v1}, Landroid/support/v4/media/session/b;->b(IILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string p2, "MediaControllerCompat"

    const-string v0, "Dead object in setVolumeTo."

    .line 1734
    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final a(Landroid/support/v4/media/session/MediaControllerCompat$a;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1535
    :try_start_0
    iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$c;->a:Landroid/support/v4/media/session/b;

    iget-object v1, p1, Landroid/support/v4/media/session/MediaControllerCompat$a;->c:Landroid/support/v4/media/session/a;

    invoke-interface {v0, v1}, Landroid/support/v4/media/session/b;->b(Landroid/support/v4/media/session/a;)V

    .line 1536
    iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$c;->a:Landroid/support/v4/media/session/b;

    invoke-interface {v0}, Landroid/support/v4/media/session/b;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "MediaControllerCompat"

    const-string v1, "Dead object in unregisterCallback."

    .line 1538
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    .line 1532
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "callback may not be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(Landroid/support/v4/media/session/MediaControllerCompat$a;Landroid/os/Handler;)V
    .locals 3

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 1520
    :try_start_0
    iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$c;->a:Landroid/support/v4/media/session/b;

    invoke-interface {v0}, Landroid/support/v4/media/session/b;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 1521
    iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$c;->a:Landroid/support/v4/media/session/b;

    iget-object v1, p1, Landroid/support/v4/media/session/MediaControllerCompat$a;->c:Landroid/support/v4/media/session/a;

    invoke-interface {v0, v1}, Landroid/support/v4/media/session/b;->a(Landroid/support/v4/media/session/a;)V

    const/16 v0, 0xd

    .line 1522
    invoke-virtual {p1, v0, p2, p2}, Landroid/support/v4/media/session/MediaControllerCompat$a;->a(ILjava/lang/Object;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "MediaControllerCompat"

    const-string v2, "Dead object in registerCallback."

    .line 1524
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 v0, 0x8

    .line 1525
    invoke-virtual {p1, v0, p2, p2}, Landroid/support/v4/media/session/MediaControllerCompat$a;->a(ILjava/lang/Object;Landroid/os/Bundle;)V

    return-void

    .line 1517
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "callback may not be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(Landroid/view/KeyEvent;)Z
    .locals 2

    if-eqz p1, :cond_0

    .line 1548
    :try_start_0
    iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$c;->a:Landroid/support/v4/media/session/b;

    invoke-interface {v0, p1}, Landroid/support/v4/media/session/b;->a(Landroid/view/KeyEvent;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "MediaControllerCompat"

    const-string v1, "Dead object in dispatchMediaButtonEvent."

    .line 1550
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const/4 p1, 0x0

    return p1

    .line 1545
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "event may not be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final b()Landroid/support/v4/media/session/PlaybackStateCompat;
    .locals 3

    .line 1567
    :try_start_0
    iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$c;->a:Landroid/support/v4/media/session/b;

    invoke-interface {v0}, Landroid/support/v4/media/session/b;->h()Landroid/support/v4/media/session/PlaybackStateCompat;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "MediaControllerCompat"

    const-string v2, "Dead object in getPlaybackState."

    .line 1569
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method public final b(II)V
    .locals 2

    .line 1741
    :try_start_0
    iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$c;->a:Landroid/support/v4/media/session/b;

    const/4 v1, 0x0

    invoke-interface {v0, p1, p2, v1}, Landroid/support/v4/media/session/b;->a(IILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string p2, "MediaControllerCompat"

    const-string v0, "Dead object in adjustVolume."

    .line 1743
    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final c()Landroid/support/v4/media/MediaMetadataCompat;
    .locals 3

    .line 1577
    :try_start_0
    iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$c;->a:Landroid/support/v4/media/session/b;

    invoke-interface {v0}, Landroid/support/v4/media/session/b;->g()Landroid/support/v4/media/MediaMetadataCompat;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "MediaControllerCompat"

    const-string v2, "Dead object in getMetadata."

    .line 1579
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method public final d()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;",
            ">;"
        }
    .end annotation

    .line 1587
    :try_start_0
    iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$c;->a:Landroid/support/v4/media/session/b;

    invoke-interface {v0}, Landroid/support/v4/media/session/b;->i()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "MediaControllerCompat"

    const-string v2, "Dead object in getQueue."

    .line 1589
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method public final e()Ljava/lang/CharSequence;
    .locals 3

    .line 1639
    :try_start_0
    iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$c;->a:Landroid/support/v4/media/session/b;

    invoke-interface {v0}, Landroid/support/v4/media/session/b;->j()Ljava/lang/CharSequence;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "MediaControllerCompat"

    const-string v2, "Dead object in getQueueTitle."

    .line 1641
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method public final f()Z
    .locals 3

    .line 1669
    :try_start_0
    iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$c;->a:Landroid/support/v4/media/session/b;

    invoke-interface {v0}, Landroid/support/v4/media/session/b;->m()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "MediaControllerCompat"

    const-string v2, "Dead object in isCaptioningEnabled."

    .line 1671
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    return v0
.end method

.method public final g()I
    .locals 3

    .line 1679
    :try_start_0
    iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$c;->a:Landroid/support/v4/media/session/b;

    invoke-interface {v0}, Landroid/support/v4/media/session/b;->n()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "MediaControllerCompat"

    const-string v2, "Dead object in getRepeatMode."

    .line 1681
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, -0x1

    return v0
.end method

.method public final h()I
    .locals 3

    .line 1689
    :try_start_0
    iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$c;->a:Landroid/support/v4/media/session/b;

    invoke-interface {v0}, Landroid/support/v4/media/session/b;->p()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "MediaControllerCompat"

    const-string v2, "Dead object in getShuffleMode."

    .line 1691
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, -0x1

    return v0
.end method

.method public final i()J
    .locals 3

    .line 1699
    :try_start_0
    iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$c;->a:Landroid/support/v4/media/session/b;

    invoke-interface {v0}, Landroid/support/v4/media/session/b;->e()J

    move-result-wide v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception v0

    const-string v1, "MediaControllerCompat"

    const-string v2, "Dead object in getFlags."

    .line 1701
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final j()Landroid/support/v4/media/session/MediaControllerCompat$d;
    .locals 8

    .line 1709
    :try_start_0
    iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$c;->a:Landroid/support/v4/media/session/b;

    invoke-interface {v0}, Landroid/support/v4/media/session/b;->f()Landroid/support/v4/media/session/ParcelableVolumeInfo;

    move-result-object v0

    .line 1710
    new-instance v7, Landroid/support/v4/media/session/MediaControllerCompat$d;

    iget v2, v0, Landroid/support/v4/media/session/ParcelableVolumeInfo;->volumeType:I

    iget v3, v0, Landroid/support/v4/media/session/ParcelableVolumeInfo;->audioStream:I

    iget v4, v0, Landroid/support/v4/media/session/ParcelableVolumeInfo;->controlType:I

    iget v5, v0, Landroid/support/v4/media/session/ParcelableVolumeInfo;->maxVolume:I

    iget v6, v0, Landroid/support/v4/media/session/ParcelableVolumeInfo;->currentVolume:I

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Landroid/support/v4/media/session/MediaControllerCompat$d;-><init>(IIIII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v7

    :catch_0
    move-exception v0

    const-string v1, "MediaControllerCompat"

    const-string v2, "Dead object in getPlaybackInfo."

    .line 1714
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method public final k()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final l()Ljava/lang/String;
    .locals 3

    .line 1765
    :try_start_0
    iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$c;->a:Landroid/support/v4/media/session/b;

    invoke-interface {v0}, Landroid/support/v4/media/session/b;->b()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "MediaControllerCompat"

    const-string v2, "Dead object in getPackageName."

    .line 1767
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method public final m()Landroid/os/Bundle;
    .locals 2

    .line 1775
    :try_start_0
    iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$c;->a:Landroid/support/v4/media/session/b;

    invoke-interface {v0}, Landroid/support/v4/media/session/b;->q()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$c;->c:Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 1780
    :goto_0
    iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$c;->c:Landroid/os/Bundle;

    invoke-static {v0}, Landroid/support/v4/media/session/MediaSessionCompat;->b(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$c;->c:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 1781
    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    return-object v0

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    iget-object v1, p0, Landroid/support/v4/media/session/MediaControllerCompat$c;->c:Landroid/os/Bundle;

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    return-object v0
.end method

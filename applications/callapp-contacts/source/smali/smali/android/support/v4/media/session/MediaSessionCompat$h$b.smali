.class final Landroid/support/v4/media/session/MediaSessionCompat$h$b;
.super Landroid/support/v4/media/session/b$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/session/MediaSessionCompat$h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v4/media/session/MediaSessionCompat$h;


# direct methods
.method constructor <init>(Landroid/support/v4/media/session/MediaSessionCompat$h;)V
    .locals 0

    .line 3049
    iput-object p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$h$b;->a:Landroid/support/v4/media/session/MediaSessionCompat$h;

    invoke-direct {p0}, Landroid/support/v4/media/session/b$a;-><init>()V

    return-void
.end method

.method private a(II)V
    .locals 6

    .line 3367
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$h$b;->a:Landroid/support/v4/media/session/MediaSessionCompat$h;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/media/session/MediaSessionCompat$h;->a(IIILjava/lang/Object;Landroid/os/Bundle;)V

    return-void
.end method

.method private a(ILjava/lang/Object;)V
    .locals 6

    .line 3371
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$h$b;->a:Landroid/support/v4/media/session/MediaSessionCompat$h;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    move v1, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/media/session/MediaSessionCompat$h;->a(IIILjava/lang/Object;Landroid/os/Bundle;)V

    return-void
.end method

.method private a(ILjava/lang/Object;Landroid/os/Bundle;)V
    .locals 6

    .line 3379
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$h$b;->a:Landroid/support/v4/media/session/MediaSessionCompat$h;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move v1, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/media/session/MediaSessionCompat$h;->a(IIILjava/lang/Object;Landroid/os/Bundle;)V

    return-void
.end method

.method private d(I)V
    .locals 6

    .line 3363
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$h$b;->a:Landroid/support/v4/media/session/MediaSessionCompat$h;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/media/session/MediaSessionCompat$h;->a(IIILjava/lang/Object;Landroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public final a(F)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3244
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const/16 v0, 0x20

    invoke-direct {p0, v0, p1}, Landroid/support/v4/media/session/MediaSessionCompat$h$b;->a(ILjava/lang/Object;)V

    return-void
.end method

.method public final a(I)V
    .locals 1

    const/16 v0, 0x1c

    .line 3313
    invoke-direct {p0, v0, p1}, Landroid/support/v4/media/session/MediaSessionCompat$h$b;->a(II)V

    return-void
.end method

.method public final a(IILjava/lang/String;)V
    .locals 0

    .line 3144
    iget-object p3, p0, Landroid/support/v4/media/session/MediaSessionCompat$h$b;->a:Landroid/support/v4/media/session/MediaSessionCompat$h;

    invoke-virtual {p3, p1, p2}, Landroid/support/v4/media/session/MediaSessionCompat$h;->a(II)V

    return-void
.end method

.method public final a(J)V
    .locals 0

    .line 3194
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/16 p2, 0xb

    invoke-direct {p0, p2, p1}, Landroid/support/v4/media/session/MediaSessionCompat$h$b;->a(ILjava/lang/Object;)V

    return-void
.end method

.method public final a(Landroid/net/Uri;Landroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x6

    .line 3169
    invoke-direct {p0, v0, p1, p2}, Landroid/support/v4/media/session/MediaSessionCompat$h$b;->a(ILjava/lang/Object;Landroid/os/Bundle;)V

    return-void
.end method

.method public final a(Landroid/support/v4/media/MediaDescriptionCompat;)V
    .locals 1

    const/16 v0, 0x19

    .line 3298
    invoke-direct {p0, v0, p1}, Landroid/support/v4/media/session/MediaSessionCompat$h$b;->a(ILjava/lang/Object;)V

    return-void
.end method

.method public final a(Landroid/support/v4/media/MediaDescriptionCompat;I)V
    .locals 6

    .line 5375
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$h$b;->a:Landroid/support/v4/media/session/MediaSessionCompat$h;

    const/16 v1, 0x1a

    const/4 v3, 0x0

    const/4 v5, 0x0

    move v2, p2

    move-object v4, p1

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/media/session/MediaSessionCompat$h;->a(IIILjava/lang/Object;Landroid/os/Bundle;)V

    return-void
.end method

.method public final a(Landroid/support/v4/media/RatingCompat;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/16 v0, 0x13

    .line 3234
    invoke-direct {p0, v0, p1}, Landroid/support/v4/media/session/MediaSessionCompat$h$b;->a(ILjava/lang/Object;)V

    return-void
.end method

.method public final a(Landroid/support/v4/media/RatingCompat;Landroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/16 v0, 0x1f

    .line 3239
    invoke-direct {p0, v0, p1, p2}, Landroid/support/v4/media/session/MediaSessionCompat$h$b;->a(ILjava/lang/Object;Landroid/os/Bundle;)V

    return-void
.end method

.method public final a(Landroid/support/v4/media/session/a;)V
    .locals 4

    .line 3066
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$h$b;->a:Landroid/support/v4/media/session/MediaSessionCompat$h;

    iget-boolean v0, v0, Landroid/support/v4/media/session/MediaSessionCompat$h;->h:Z

    if-eqz v0, :cond_0

    .line 3068
    :try_start_0
    invoke-interface {p1}, Landroid/support/v4/media/session/a;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void

    .line 3074
    :cond_0
    invoke-static {}, Landroid/support/v4/media/session/MediaSessionCompat$h$b;->getCallingUid()I

    move-result v0

    .line 3075
    new-instance v1, Landroidx/media/b$b;

    iget-object v2, p0, Landroid/support/v4/media/session/MediaSessionCompat$h$b;->a:Landroid/support/v4/media/session/MediaSessionCompat$h;

    .line 3076
    invoke-virtual {v2, v0}, Landroid/support/v4/media/session/MediaSessionCompat$h;->e(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Landroid/support/v4/media/session/MediaSessionCompat$h$b;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/support/v4/media/session/MediaSessionCompat$h$b;->getCallingUid()I

    move-result v3

    invoke-direct {v1, v0, v2, v3}, Landroidx/media/b$b;-><init>(Ljava/lang/String;II)V

    .line 3077
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$h$b;->a:Landroid/support/v4/media/session/MediaSessionCompat$h;

    iget-object v0, v0, Landroid/support/v4/media/session/MediaSessionCompat$h;->g:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1, v1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x4

    .line 3159
    invoke-direct {p0, v0, p1, p2}, Landroid/support/v4/media/session/MediaSessionCompat$h$b;->a(ILjava/lang/Object;Landroid/os/Bundle;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Landroid/os/Bundle;Landroid/support/v4/media/session/MediaSessionCompat$ResultReceiverWrapper;)V
    .locals 1

    .line 3052
    new-instance v0, Landroid/support/v4/media/session/MediaSessionCompat$h$a;

    if-nez p3, :cond_0

    const/4 p3, 0x0

    goto :goto_0

    .line 3053
    :cond_0
    iget-object p3, p3, Landroid/support/v4/media/session/MediaSessionCompat$ResultReceiverWrapper;->mResultReceiver:Landroid/os/ResultReceiver;

    :goto_0
    invoke-direct {v0, p1, p2, p3}, Landroid/support/v4/media/session/MediaSessionCompat$h$a;-><init>(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V

    const/4 p1, 0x1

    .line 3052
    invoke-direct {p0, p1, v0}, Landroid/support/v4/media/session/MediaSessionCompat$h$b;->a(ILjava/lang/Object;)V

    return-void
.end method

.method public final a(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3249
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/16 v0, 0x1d

    invoke-direct {p0, v0, p1}, Landroid/support/v4/media/session/MediaSessionCompat$h$b;->a(ILjava/lang/Object;)V

    return-void
.end method

.method public final a()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final a(Landroid/view/KeyEvent;)Z
    .locals 1

    const/16 v0, 0x15

    .line 3058
    invoke-direct {p0, v0, p1}, Landroid/support/v4/media/session/MediaSessionCompat$h$b;->a(ILjava/lang/Object;)V

    const/4 p1, 0x1

    return p1
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .line 3088
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$h$b;->a:Landroid/support/v4/media/session/MediaSessionCompat$h;

    iget-object v0, v0, Landroid/support/v4/media/session/MediaSessionCompat$h;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final b(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/16 v0, 0x17

    .line 3254
    invoke-direct {p0, v0, p1}, Landroid/support/v4/media/session/MediaSessionCompat$h$b;->a(II)V

    return-void
.end method

.method public final b(IILjava/lang/String;)V
    .locals 0

    .line 3149
    iget-object p3, p0, Landroid/support/v4/media/session/MediaSessionCompat$h$b;->a:Landroid/support/v4/media/session/MediaSessionCompat$h;

    invoke-virtual {p3, p1, p2}, Landroid/support/v4/media/session/MediaSessionCompat$h;->b(II)V

    return-void
.end method

.method public final b(J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3229
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/16 p2, 0x12

    invoke-direct {p0, p2, p1}, Landroid/support/v4/media/session/MediaSessionCompat$h$b;->a(ILjava/lang/Object;)V

    return-void
.end method

.method public final b(Landroid/net/Uri;Landroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/16 v0, 0xa

    .line 3189
    invoke-direct {p0, v0, p1, p2}, Landroid/support/v4/media/session/MediaSessionCompat$h$b;->a(ILjava/lang/Object;Landroid/os/Bundle;)V

    return-void
.end method

.method public final b(Landroid/support/v4/media/MediaDescriptionCompat;)V
    .locals 1

    const/16 v0, 0x1b

    .line 3308
    invoke-direct {p0, v0, p1}, Landroid/support/v4/media/session/MediaSessionCompat$h$b;->a(ILjava/lang/Object;)V

    return-void
.end method

.method public final b(Landroid/support/v4/media/session/a;)V
    .locals 1

    .line 3082
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$h$b;->a:Landroid/support/v4/media/session/MediaSessionCompat$h;

    iget-object v0, v0, Landroid/support/v4/media/session/MediaSessionCompat$h;->g:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    return-void
.end method

.method public final b(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x5

    .line 3164
    invoke-direct {p0, v0, p1, p2}, Landroid/support/v4/media/session/MediaSessionCompat$h$b;->a(ILjava/lang/Object;Landroid/os/Bundle;)V

    return-void
.end method

.method public final b(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .line 3100
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$h$b;->a:Landroid/support/v4/media/session/MediaSessionCompat$h;

    iget-object v0, v0, Landroid/support/v4/media/session/MediaSessionCompat$h;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final c(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/16 v0, 0x1e

    .line 3264
    invoke-direct {p0, v0, p1}, Landroid/support/v4/media/session/MediaSessionCompat$h$b;->a(II)V

    return-void
.end method

.method public final c(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/16 v0, 0x8

    .line 3179
    invoke-direct {p0, v0, p1, p2}, Landroid/support/v4/media/session/MediaSessionCompat$h$b;->a(ILjava/lang/Object;Landroid/os/Bundle;)V

    return-void
.end method

.method public final d()Landroid/app/PendingIntent;
    .locals 2

    .line 3105
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$h$b;->a:Landroid/support/v4/media/session/MediaSessionCompat$h;

    iget-object v0, v0, Landroid/support/v4/media/session/MediaSessionCompat$h;->f:Ljava/lang/Object;

    monitor-enter v0

    .line 3106
    :try_start_0
    iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$h$b;->a:Landroid/support/v4/media/session/MediaSessionCompat$h;

    iget-object v1, v1, Landroid/support/v4/media/session/MediaSessionCompat$h;->n:Landroid/app/PendingIntent;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 3107
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final d(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/16 v0, 0x9

    .line 3184
    invoke-direct {p0, v0, p1, p2}, Landroid/support/v4/media/session/MediaSessionCompat$h$b;->a(ILjava/lang/Object;Landroid/os/Bundle;)V

    return-void
.end method

.method public final e()J
    .locals 3

    .line 3113
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$h$b;->a:Landroid/support/v4/media/session/MediaSessionCompat$h;

    iget-object v0, v0, Landroid/support/v4/media/session/MediaSessionCompat$h;->f:Ljava/lang/Object;

    monitor-enter v0

    .line 3114
    :try_start_0
    iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$h$b;->a:Landroid/support/v4/media/session/MediaSessionCompat$h;

    iget v1, v1, Landroid/support/v4/media/session/MediaSessionCompat$h;->k:I

    int-to-long v1, v1

    monitor-exit v0

    return-wide v1

    :catchall_0
    move-exception v1

    .line 3115
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final e(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/16 v0, 0x14

    .line 3270
    invoke-direct {p0, v0, p1, p2}, Landroid/support/v4/media/session/MediaSessionCompat$h$b;->a(ILjava/lang/Object;Landroid/os/Bundle;)V

    return-void
.end method

.method public final f()Landroid/support/v4/media/session/ParcelableVolumeInfo;
    .locals 8

    .line 3125
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$h$b;->a:Landroid/support/v4/media/session/MediaSessionCompat$h;

    iget-object v0, v0, Landroid/support/v4/media/session/MediaSessionCompat$h;->f:Ljava/lang/Object;

    monitor-enter v0

    .line 3126
    :try_start_0
    iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$h$b;->a:Landroid/support/v4/media/session/MediaSessionCompat$h;

    iget v3, v1, Landroid/support/v4/media/session/MediaSessionCompat$h;->v:I

    .line 3127
    iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$h$b;->a:Landroid/support/v4/media/session/MediaSessionCompat$h;

    iget v4, v1, Landroid/support/v4/media/session/MediaSessionCompat$h;->w:I

    .line 3128
    iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$h$b;->a:Landroid/support/v4/media/session/MediaSessionCompat$h;

    iget-object v1, v1, Landroid/support/v4/media/session/MediaSessionCompat$h;->x:Landroidx/media/f;

    const/4 v2, 0x2

    if-ne v3, v2, :cond_0

    .line 4124
    iget v2, v1, Landroidx/media/f;->a:I

    .line 4133
    iget v5, v1, Landroidx/media/f;->b:I

    .line 5114
    iget v1, v1, Landroidx/media/f;->d:I

    move v7, v1

    move v6, v5

    move v5, v2

    goto :goto_0

    .line 3135
    :cond_0
    iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$h$b;->a:Landroid/support/v4/media/session/MediaSessionCompat$h;

    iget-object v1, v1, Landroid/support/v4/media/session/MediaSessionCompat$h;->d:Landroid/media/AudioManager;

    invoke-virtual {v1, v4}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v1

    .line 3136
    iget-object v5, p0, Landroid/support/v4/media/session/MediaSessionCompat$h$b;->a:Landroid/support/v4/media/session/MediaSessionCompat$h;

    iget-object v5, v5, Landroid/support/v4/media/session/MediaSessionCompat$h;->d:Landroid/media/AudioManager;

    invoke-virtual {v5, v4}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v5

    move v6, v1

    move v7, v5

    const/4 v5, 0x2

    .line 3138
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3139
    new-instance v0, Landroid/support/v4/media/session/ParcelableVolumeInfo;

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Landroid/support/v4/media/session/ParcelableVolumeInfo;-><init>(IIIII)V

    return-object v0

    :catchall_0
    move-exception v1

    .line 3138
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public final g()Landroid/support/v4/media/MediaMetadataCompat;
    .locals 1

    .line 3275
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$h$b;->a:Landroid/support/v4/media/session/MediaSessionCompat$h;

    iget-object v0, v0, Landroid/support/v4/media/session/MediaSessionCompat$h;->l:Landroid/support/v4/media/MediaMetadataCompat;

    return-object v0
.end method

.method public final h()Landroid/support/v4/media/session/PlaybackStateCompat;
    .locals 3

    .line 3282
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$h$b;->a:Landroid/support/v4/media/session/MediaSessionCompat$h;

    iget-object v0, v0, Landroid/support/v4/media/session/MediaSessionCompat$h;->f:Ljava/lang/Object;

    monitor-enter v0

    .line 3283
    :try_start_0
    iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$h$b;->a:Landroid/support/v4/media/session/MediaSessionCompat$h;

    iget-object v1, v1, Landroid/support/v4/media/session/MediaSessionCompat$h;->m:Landroid/support/v4/media/session/PlaybackStateCompat;

    .line 3284
    iget-object v2, p0, Landroid/support/v4/media/session/MediaSessionCompat$h$b;->a:Landroid/support/v4/media/session/MediaSessionCompat$h;

    iget-object v2, v2, Landroid/support/v4/media/session/MediaSessionCompat$h;->l:Landroid/support/v4/media/MediaMetadataCompat;

    .line 3285
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3286
    invoke-static {v1, v2}, Landroid/support/v4/media/session/MediaSessionCompat;->a(Landroid/support/v4/media/session/PlaybackStateCompat;Landroid/support/v4/media/MediaMetadataCompat;)Landroid/support/v4/media/session/PlaybackStateCompat;

    move-result-object v0

    return-object v0

    :catchall_0
    move-exception v1

    .line 3285
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public final i()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;",
            ">;"
        }
    .end annotation

    .line 3291
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$h$b;->a:Landroid/support/v4/media/session/MediaSessionCompat$h;

    iget-object v0, v0, Landroid/support/v4/media/session/MediaSessionCompat$h;->f:Ljava/lang/Object;

    monitor-enter v0

    .line 3292
    :try_start_0
    iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$h$b;->a:Landroid/support/v4/media/session/MediaSessionCompat$h;

    iget-object v1, v1, Landroid/support/v4/media/session/MediaSessionCompat$h;->o:Ljava/util/List;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 3293
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final j()Ljava/lang/CharSequence;
    .locals 1

    .line 3318
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$h$b;->a:Landroid/support/v4/media/session/MediaSessionCompat$h;

    iget-object v0, v0, Landroid/support/v4/media/session/MediaSessionCompat$h;->p:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final k()Landroid/os/Bundle;
    .locals 2

    .line 3323
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$h$b;->a:Landroid/support/v4/media/session/MediaSessionCompat$h;

    iget-object v0, v0, Landroid/support/v4/media/session/MediaSessionCompat$h;->f:Ljava/lang/Object;

    monitor-enter v0

    .line 3324
    :try_start_0
    iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$h$b;->a:Landroid/support/v4/media/session/MediaSessionCompat$h;

    iget-object v1, v1, Landroid/support/v4/media/session/MediaSessionCompat$h;->u:Landroid/os/Bundle;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 3325
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final l()I
    .locals 1

    .line 3331
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$h$b;->a:Landroid/support/v4/media/session/MediaSessionCompat$h;

    iget v0, v0, Landroid/support/v4/media/session/MediaSessionCompat$h;->q:I

    return v0
.end method

.method public final m()Z
    .locals 1

    .line 3336
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$h$b;->a:Landroid/support/v4/media/session/MediaSessionCompat$h;

    iget-boolean v0, v0, Landroid/support/v4/media/session/MediaSessionCompat$h;->r:Z

    return v0
.end method

.method public final n()I
    .locals 1

    .line 3342
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$h$b;->a:Landroid/support/v4/media/session/MediaSessionCompat$h;

    iget v0, v0, Landroid/support/v4/media/session/MediaSessionCompat$h;->s:I

    return v0
.end method

.method public final o()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final p()I
    .locals 1

    .line 3353
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$h$b;->a:Landroid/support/v4/media/session/MediaSessionCompat$h;

    iget v0, v0, Landroid/support/v4/media/session/MediaSessionCompat$h;->t:I

    return v0
.end method

.method public final q()Landroid/os/Bundle;
    .locals 2

    .line 3094
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$h$b;->a:Landroid/support/v4/media/session/MediaSessionCompat$h;

    iget-object v0, v0, Landroid/support/v4/media/session/MediaSessionCompat$h;->b:Landroid/os/Bundle;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$h$b;->a:Landroid/support/v4/media/session/MediaSessionCompat$h;

    iget-object v1, v1, Landroid/support/v4/media/session/MediaSessionCompat$h;->b:Landroid/os/Bundle;

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    return-object v0
.end method

.method public final r()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x3

    .line 3154
    invoke-direct {p0, v0}, Landroid/support/v4/media/session/MediaSessionCompat$h$b;->d(I)V

    return-void
.end method

.method public final s()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x7

    .line 3174
    invoke-direct {p0, v0}, Landroid/support/v4/media/session/MediaSessionCompat$h$b;->d(I)V

    return-void
.end method

.method public final t()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/16 v0, 0xc

    .line 3199
    invoke-direct {p0, v0}, Landroid/support/v4/media/session/MediaSessionCompat$h$b;->d(I)V

    return-void
.end method

.method public final u()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/16 v0, 0xd

    .line 3204
    invoke-direct {p0, v0}, Landroid/support/v4/media/session/MediaSessionCompat$h$b;->d(I)V

    return-void
.end method

.method public final v()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/16 v0, 0xe

    .line 3209
    invoke-direct {p0, v0}, Landroid/support/v4/media/session/MediaSessionCompat$h$b;->d(I)V

    return-void
.end method

.method public final w()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/16 v0, 0xf

    .line 3214
    invoke-direct {p0, v0}, Landroid/support/v4/media/session/MediaSessionCompat$h$b;->d(I)V

    return-void
.end method

.method public final x()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/16 v0, 0x10

    .line 3219
    invoke-direct {p0, v0}, Landroid/support/v4/media/session/MediaSessionCompat$h$b;->d(I)V

    return-void
.end method

.method public final y()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/16 v0, 0x11

    .line 3224
    invoke-direct {p0, v0}, Landroid/support/v4/media/session/MediaSessionCompat$h$b;->d(I)V

    return-void
.end method

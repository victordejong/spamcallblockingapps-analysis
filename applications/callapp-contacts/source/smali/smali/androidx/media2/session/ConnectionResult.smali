.class Landroidx/media2/session/ConnectionResult;
.super Landroidx/versionedparcelable/CustomVersionedParcelable;
.source "SourceFile"


# instance fields
.field A:Landroidx/media2/common/MediaMetadata;

.field B:I

.field a:I

.field b:Landroidx/media2/session/c;

.field c:Landroid/os/IBinder;

.field d:Landroid/app/PendingIntent;

.field e:I

.field f:Landroidx/media2/common/MediaItem;

.field g:Landroidx/media2/common/MediaItem;

.field h:J

.field i:J

.field j:F

.field k:J

.field l:Landroidx/media2/session/MediaController$PlaybackInfo;

.field m:I

.field n:I

.field o:Landroidx/media2/common/ParcelImplListSlice;

.field p:Landroidx/media2/session/SessionCommandGroup;

.field q:I

.field r:I

.field s:I

.field t:Landroid/os/Bundle;

.field u:Landroidx/media2/common/VideoSize;

.field v:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/media2/common/SessionPlayer$TrackInfo;",
            ">;"
        }
    .end annotation
.end field

.field w:Landroidx/media2/common/SessionPlayer$TrackInfo;

.field x:Landroidx/media2/common/SessionPlayer$TrackInfo;

.field y:Landroidx/media2/common/SessionPlayer$TrackInfo;

.field z:Landroidx/media2/common/SessionPlayer$TrackInfo;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 112
    invoke-direct {p0}, Landroidx/versionedparcelable/CustomVersionedParcelable;-><init>()V

    return-void
.end method

.method constructor <init>(Landroidx/media2/session/r;Landroidx/media2/session/MediaSession$c;Landroidx/media2/session/SessionCommandGroup;)V
    .locals 2

    .line 118
    invoke-direct {p0}, Landroidx/versionedparcelable/CustomVersionedParcelable;-><init>()V

    .line 119
    iput-object p1, p0, Landroidx/media2/session/ConnectionResult;->b:Landroidx/media2/session/c;

    .line 120
    invoke-interface {p2}, Landroidx/media2/session/MediaSession$c;->d()I

    move-result p1

    iput p1, p0, Landroidx/media2/session/ConnectionResult;->e:I

    .line 121
    invoke-interface {p2}, Landroidx/media2/session/MediaSession$c;->m()Landroidx/media2/common/MediaItem;

    move-result-object p1

    iput-object p1, p0, Landroidx/media2/session/ConnectionResult;->f:Landroidx/media2/common/MediaItem;

    .line 122
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/media2/session/ConnectionResult;->h:J

    .line 123
    invoke-interface {p2}, Landroidx/media2/session/MediaSession$c;->e()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/media2/session/ConnectionResult;->i:J

    .line 124
    invoke-interface {p2}, Landroidx/media2/session/MediaSession$c;->h()F

    move-result p1

    iput p1, p0, Landroidx/media2/session/ConnectionResult;->j:F

    .line 125
    invoke-interface {p2}, Landroidx/media2/session/MediaSession$c;->f()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/media2/session/ConnectionResult;->k:J

    .line 126
    invoke-interface {p2}, Landroidx/media2/session/MediaSession$c;->J()Landroidx/media2/session/MediaController$PlaybackInfo;

    move-result-object p1

    iput-object p1, p0, Landroidx/media2/session/ConnectionResult;->l:Landroidx/media2/session/MediaController$PlaybackInfo;

    .line 127
    invoke-interface {p2}, Landroidx/media2/session/MediaSession$c;->s()I

    move-result p1

    iput p1, p0, Landroidx/media2/session/ConnectionResult;->m:I

    .line 128
    invoke-interface {p2}, Landroidx/media2/session/MediaSession$c;->t()I

    move-result p1

    iput p1, p0, Landroidx/media2/session/ConnectionResult;->n:I

    .line 129
    invoke-interface {p2}, Landroidx/media2/session/MediaSession$c;->K()Landroid/app/PendingIntent;

    move-result-object p1

    iput-object p1, p0, Landroidx/media2/session/ConnectionResult;->d:Landroid/app/PendingIntent;

    .line 130
    invoke-interface {p2}, Landroidx/media2/session/MediaSession$c;->n()I

    move-result p1

    iput p1, p0, Landroidx/media2/session/ConnectionResult;->q:I

    .line 131
    invoke-interface {p2}, Landroidx/media2/session/MediaSession$c;->o()I

    move-result p1

    iput p1, p0, Landroidx/media2/session/ConnectionResult;->r:I

    .line 132
    invoke-interface {p2}, Landroidx/media2/session/MediaSession$c;->p()I

    move-result p1

    iput p1, p0, Landroidx/media2/session/ConnectionResult;->s:I

    .line 133
    invoke-interface {p2}, Landroidx/media2/session/MediaSession$c;->D()Landroidx/media2/session/SessionToken;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/media2/session/SessionToken;->c()Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, p0, Landroidx/media2/session/ConnectionResult;->t:Landroid/os/Bundle;

    .line 134
    invoke-interface {p2}, Landroidx/media2/session/MediaSession$c;->i()Landroidx/media2/common/VideoSize;

    move-result-object p1

    iput-object p1, p0, Landroidx/media2/session/ConnectionResult;->u:Landroidx/media2/common/VideoSize;

    .line 135
    invoke-interface {p2}, Landroidx/media2/session/MediaSession$c;->j()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Landroidx/media2/session/ConnectionResult;->v:Ljava/util/List;

    const/4 p1, 0x1

    .line 136
    invoke-interface {p2, p1}, Landroidx/media2/session/MediaSession$c;->a(I)Landroidx/media2/common/SessionPlayer$TrackInfo;

    move-result-object p1

    iput-object p1, p0, Landroidx/media2/session/ConnectionResult;->w:Landroidx/media2/common/SessionPlayer$TrackInfo;

    const/4 p1, 0x2

    .line 137
    invoke-interface {p2, p1}, Landroidx/media2/session/MediaSession$c;->a(I)Landroidx/media2/common/SessionPlayer$TrackInfo;

    move-result-object p1

    iput-object p1, p0, Landroidx/media2/session/ConnectionResult;->x:Landroidx/media2/common/SessionPlayer$TrackInfo;

    const/4 p1, 0x4

    .line 138
    invoke-interface {p2, p1}, Landroidx/media2/session/MediaSession$c;->a(I)Landroidx/media2/common/SessionPlayer$TrackInfo;

    move-result-object p1

    iput-object p1, p0, Landroidx/media2/session/ConnectionResult;->y:Landroidx/media2/common/SessionPlayer$TrackInfo;

    const/4 p1, 0x5

    .line 139
    invoke-interface {p2, p1}, Landroidx/media2/session/MediaSession$c;->a(I)Landroidx/media2/common/SessionPlayer$TrackInfo;

    move-result-object p1

    iput-object p1, p0, Landroidx/media2/session/ConnectionResult;->z:Landroidx/media2/common/SessionPlayer$TrackInfo;

    const/16 p1, 0x2715

    .line 140
    invoke-virtual {p3, p1}, Landroidx/media2/session/SessionCommandGroup;->a(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 141
    invoke-interface {p2}, Landroidx/media2/session/MediaSession$c;->k()Ljava/util/List;

    move-result-object v0

    .line 142
    invoke-static {v0}, Landroidx/media2/session/s;->f(Ljava/util/List;)Landroidx/media2/common/ParcelImplListSlice;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/session/ConnectionResult;->o:Landroidx/media2/common/ParcelImplListSlice;

    goto :goto_0

    .line 144
    :cond_0
    iput-object v1, p0, Landroidx/media2/session/ConnectionResult;->o:Landroidx/media2/common/ParcelImplListSlice;

    .line 146
    :goto_0
    invoke-virtual {p3, p1}, Landroidx/media2/session/SessionCommandGroup;->a(I)Z

    move-result p1

    if-nez p1, :cond_2

    const/16 p1, 0x271c

    .line 147
    invoke-virtual {p3, p1}, Landroidx/media2/session/SessionCommandGroup;->a(I)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    .line 151
    :cond_1
    iput-object v1, p0, Landroidx/media2/session/ConnectionResult;->A:Landroidx/media2/common/MediaMetadata;

    goto :goto_2

    .line 149
    :cond_2
    :goto_1
    invoke-interface {p2}, Landroidx/media2/session/MediaSession$c;->l()Landroidx/media2/common/MediaMetadata;

    move-result-object p1

    iput-object p1, p0, Landroidx/media2/session/ConnectionResult;->A:Landroidx/media2/common/MediaMetadata;

    .line 153
    :goto_2
    invoke-interface {p2}, Landroidx/media2/session/MediaSession$c;->g()I

    move-result p1

    iput p1, p0, Landroidx/media2/session/ConnectionResult;->B:I

    .line 154
    iput-object p3, p0, Landroidx/media2/session/ConnectionResult;->p:Landroidx/media2/session/SessionCommandGroup;

    const/4 p1, 0x0

    .line 155
    iput p1, p0, Landroidx/media2/session/ConnectionResult;->a:I

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 1

    .line 267
    iget-object p1, p0, Landroidx/media2/session/ConnectionResult;->b:Landroidx/media2/session/c;

    monitor-enter p1

    .line 268
    :try_start_0
    iget-object v0, p0, Landroidx/media2/session/ConnectionResult;->c:Landroid/os/IBinder;

    if-nez v0, :cond_0

    .line 269
    iget-object v0, p0, Landroidx/media2/session/ConnectionResult;->b:Landroidx/media2/session/c;

    check-cast v0, Landroid/os/IBinder;

    iput-object v0, p0, Landroidx/media2/session/ConnectionResult;->c:Landroid/os/IBinder;

    .line 270
    iget-object v0, p0, Landroidx/media2/session/ConnectionResult;->f:Landroidx/media2/common/MediaItem;

    .line 271
    invoke-static {v0}, Landroidx/media2/session/s;->a(Landroidx/media2/common/MediaItem;)Landroidx/media2/common/MediaItem;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/session/ConnectionResult;->g:Landroidx/media2/common/MediaItem;

    .line 273
    :cond_0
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final e()V
    .locals 1

    .line 278
    iget-object v0, p0, Landroidx/media2/session/ConnectionResult;->c:Landroid/os/IBinder;

    invoke-static {v0}, Landroidx/media2/session/c$a;->a(Landroid/os/IBinder;)Landroidx/media2/session/c;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/session/ConnectionResult;->b:Landroidx/media2/session/c;

    .line 279
    iget-object v0, p0, Landroidx/media2/session/ConnectionResult;->g:Landroidx/media2/common/MediaItem;

    iput-object v0, p0, Landroidx/media2/session/ConnectionResult;->f:Landroidx/media2/common/MediaItem;

    return-void
.end method

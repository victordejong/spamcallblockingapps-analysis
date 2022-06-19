.class final Landroidx/media2/session/i$b;
.super Landroid/support/v4/media/session/MediaControllerCompat$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/session/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "b"
.end annotation


# instance fields
.field final synthetic d:Landroidx/media2/session/i;


# direct methods
.method constructor <init>(Landroidx/media2/session/i;)V
    .locals 0

    .line 971
    iput-object p1, p0, Landroidx/media2/session/i$b;->d:Landroidx/media2/session/i;

    invoke-direct {p0}, Landroid/support/v4/media/session/MediaControllerCompat$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    .line 977
    iget-object v0, p0, Landroidx/media2/session/i$b;->d:Landroidx/media2/session/i;

    iget-object v0, v0, Landroidx/media2/session/i;->g:Ljava/lang/Object;

    monitor-enter v0

    .line 978
    :try_start_0
    iget-object v1, p0, Landroidx/media2/session/i$b;->d:Landroidx/media2/session/i;

    iget-boolean v1, v1, Landroidx/media2/session/i;->B:Z

    .line 979
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v1, :cond_0

    .line 981
    iget-object v0, p0, Landroidx/media2/session/i$b;->d:Landroidx/media2/session/i;

    invoke-virtual {v0}, Landroidx/media2/session/i;->r()V

    return-void

    .line 989
    :cond_0
    iget-object v0, p0, Landroidx/media2/session/i$b;->d:Landroidx/media2/session/i;

    iget-object v1, v0, Landroidx/media2/session/i;->g:Ljava/lang/Object;

    monitor-enter v1

    .line 990
    :try_start_1
    iget-object v0, p0, Landroidx/media2/session/i$b;->d:Landroidx/media2/session/i;

    iget-object v0, v0, Landroidx/media2/session/i;->x:Landroid/support/v4/media/session/MediaControllerCompat;

    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaControllerCompat;->b()Landroid/support/v4/media/session/PlaybackStateCompat;

    move-result-object v0

    .line 991
    iget-object v2, p0, Landroidx/media2/session/i$b;->d:Landroidx/media2/session/i;

    iget-object v2, v2, Landroidx/media2/session/i;->x:Landroid/support/v4/media/session/MediaControllerCompat;

    invoke-virtual {v2}, Landroid/support/v4/media/session/MediaControllerCompat;->e()I

    move-result v2

    .line 992
    iget-object v3, p0, Landroidx/media2/session/i$b;->d:Landroidx/media2/session/i;

    iget-object v3, v3, Landroidx/media2/session/i;->x:Landroid/support/v4/media/session/MediaControllerCompat;

    invoke-virtual {v3}, Landroid/support/v4/media/session/MediaControllerCompat;->d()I

    move-result v3

    .line 993
    iget-object v4, p0, Landroidx/media2/session/i$b;->d:Landroidx/media2/session/i;

    iget-object v4, v4, Landroidx/media2/session/i;->x:Landroid/support/v4/media/session/MediaControllerCompat;

    .line 1444
    iget-object v4, v4, Landroid/support/v4/media/session/MediaControllerCompat;->a:Landroid/support/v4/media/session/MediaControllerCompat$b;

    invoke-interface {v4}, Landroid/support/v4/media/session/MediaControllerCompat$b;->f()Z

    move-result v4

    .line 994
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 995
    invoke-virtual {p0, v0}, Landroidx/media2/session/i$b;->a(Landroid/support/v4/media/session/PlaybackStateCompat;)V

    .line 996
    invoke-virtual {p0, v2}, Landroidx/media2/session/i$b;->b(I)V

    .line 997
    invoke-virtual {p0, v3}, Landroidx/media2/session/i$b;->a(I)V

    .line 998
    invoke-virtual {p0, v4}, Landroidx/media2/session/i$b;->a(Z)V

    return-void

    :catchall_0
    move-exception v0

    .line 994
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception v1

    .line 979
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method public final a(I)V
    .locals 2

    .line 1285
    iget-object v0, p0, Landroidx/media2/session/i$b;->d:Landroidx/media2/session/i;

    iget-object v0, v0, Landroidx/media2/session/i;->g:Ljava/lang/Object;

    monitor-enter v0

    .line 1286
    :try_start_0
    iget-object v1, p0, Landroidx/media2/session/i$b;->d:Landroidx/media2/session/i;

    iget-boolean v1, v1, Landroidx/media2/session/i;->j:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Landroidx/media2/session/i$b;->d:Landroidx/media2/session/i;

    iget-boolean v1, v1, Landroidx/media2/session/i;->B:Z

    if-nez v1, :cond_0

    goto :goto_0

    .line 1289
    :cond_0
    iget-object v1, p0, Landroidx/media2/session/i$b;->d:Landroidx/media2/session/i;

    iput p1, v1, Landroidx/media2/session/i;->n:I

    .line 1290
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1291
    iget-object v0, p0, Landroidx/media2/session/i$b;->d:Landroidx/media2/session/i;

    iget-object v0, v0, Landroidx/media2/session/i;->h:Landroidx/media2/session/MediaController;

    new-instance v1, Landroidx/media2/session/i$b$8;

    invoke-direct {v1, p0, p1}, Landroidx/media2/session/i$b$8;-><init>(Landroidx/media2/session/i$b;I)V

    invoke-virtual {v0, v1}, Landroidx/media2/session/MediaController;->b(Landroidx/media2/session/MediaController$b;)V

    return-void

    .line 1287
    :cond_1
    :goto_0
    :try_start_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    .line 1290
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 2

    .line 1234
    iget-object v0, p0, Landroidx/media2/session/i$b;->d:Landroidx/media2/session/i;

    iget-object v0, v0, Landroidx/media2/session/i;->g:Ljava/lang/Object;

    monitor-enter v0

    .line 1235
    :try_start_0
    iget-object v1, p0, Landroidx/media2/session/i$b;->d:Landroidx/media2/session/i;

    iget-boolean v1, v1, Landroidx/media2/session/i;->j:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Landroidx/media2/session/i$b;->d:Landroidx/media2/session/i;

    iget-boolean v1, v1, Landroidx/media2/session/i;->B:Z

    if-nez v1, :cond_0

    goto :goto_0

    .line 1238
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1239
    iget-object v0, p0, Landroidx/media2/session/i$b;->d:Landroidx/media2/session/i;

    iget-object v0, v0, Landroidx/media2/session/i;->h:Landroidx/media2/session/MediaController;

    new-instance v1, Landroidx/media2/session/i$b$5;

    invoke-direct {v1, p0, p1}, Landroidx/media2/session/i$b$5;-><init>(Landroidx/media2/session/i$b;Landroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Landroidx/media2/session/MediaController;->a(Landroidx/media2/session/MediaController$b;)V

    return-void

    .line 1236
    :cond_1
    :goto_0
    :try_start_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    .line 1238
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final a(Landroid/support/v4/media/MediaMetadataCompat;)V
    .locals 3

    .line 1167
    iget-object v0, p0, Landroidx/media2/session/i$b;->d:Landroidx/media2/session/i;

    iget-object v0, v0, Landroidx/media2/session/i;->g:Ljava/lang/Object;

    monitor-enter v0

    .line 1168
    :try_start_0
    iget-object v1, p0, Landroidx/media2/session/i$b;->d:Landroidx/media2/session/i;

    iget-boolean v1, v1, Landroidx/media2/session/i;->j:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Landroidx/media2/session/i$b;->d:Landroidx/media2/session/i;

    iget-boolean v1, v1, Landroidx/media2/session/i;->B:Z

    if-nez v1, :cond_0

    goto :goto_0

    .line 1171
    :cond_0
    iget-object v1, p0, Landroidx/media2/session/i$b;->d:Landroidx/media2/session/i;

    iget-object v1, v1, Landroidx/media2/session/i;->q:Landroidx/media2/common/MediaItem;

    .line 1172
    iget-object v2, p0, Landroidx/media2/session/i$b;->d:Landroidx/media2/session/i;

    invoke-virtual {v2, p1}, Landroidx/media2/session/i;->a(Landroid/support/v4/media/MediaMetadataCompat;)V

    .line 1173
    iget-object p1, p0, Landroidx/media2/session/i$b;->d:Landroidx/media2/session/i;

    iget-object p1, p1, Landroidx/media2/session/i;->q:Landroidx/media2/common/MediaItem;

    .line 1174
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v1, p1, :cond_1

    .line 1176
    iget-object v0, p0, Landroidx/media2/session/i$b;->d:Landroidx/media2/session/i;

    iget-object v0, v0, Landroidx/media2/session/i;->h:Landroidx/media2/session/MediaController;

    new-instance v1, Landroidx/media2/session/i$b$2;

    invoke-direct {v1, p0, p1}, Landroidx/media2/session/i$b$2;-><init>(Landroidx/media2/session/i$b;Landroidx/media2/common/MediaItem;)V

    invoke-virtual {v0, v1}, Landroidx/media2/session/MediaController;->b(Landroidx/media2/session/MediaController$b;)V

    :cond_1
    return-void

    .line 1169
    :cond_2
    :goto_0
    :try_start_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    .line 1174
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final a(Landroid/support/v4/media/session/MediaControllerCompat$d;)V
    .locals 2

    .line 1250
    invoke-static {p1}, Landroidx/media2/session/s;->a(Landroid/support/v4/media/session/MediaControllerCompat$d;)Landroidx/media2/session/MediaController$PlaybackInfo;

    move-result-object p1

    .line 1251
    iget-object v0, p0, Landroidx/media2/session/i$b;->d:Landroidx/media2/session/i;

    iget-object v0, v0, Landroidx/media2/session/i;->g:Ljava/lang/Object;

    monitor-enter v0

    .line 1252
    :try_start_0
    iget-object v1, p0, Landroidx/media2/session/i$b;->d:Landroidx/media2/session/i;

    iget-boolean v1, v1, Landroidx/media2/session/i;->j:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Landroidx/media2/session/i$b;->d:Landroidx/media2/session/i;

    iget-boolean v1, v1, Landroidx/media2/session/i;->B:Z

    if-nez v1, :cond_0

    goto :goto_0

    .line 1255
    :cond_0
    iget-object v1, p0, Landroidx/media2/session/i$b;->d:Landroidx/media2/session/i;

    iput-object p1, v1, Landroidx/media2/session/i;->u:Landroidx/media2/session/MediaController$PlaybackInfo;

    .line 1256
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1257
    iget-object v0, p0, Landroidx/media2/session/i$b;->d:Landroidx/media2/session/i;

    iget-object v0, v0, Landroidx/media2/session/i;->h:Landroidx/media2/session/MediaController;

    new-instance v1, Landroidx/media2/session/i$b$6;

    invoke-direct {v1, p0, p1}, Landroidx/media2/session/i$b$6;-><init>(Landroidx/media2/session/i$b;Landroidx/media2/session/MediaController$PlaybackInfo;)V

    invoke-virtual {v0, v1}, Landroidx/media2/session/MediaController;->b(Landroidx/media2/session/MediaController$b;)V

    return-void

    .line 1253
    :cond_1
    :goto_0
    :try_start_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    .line 1256
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final a(Landroid/support/v4/media/session/PlaybackStateCompat;)V
    .locals 14

    .line 1032
    iget-object v0, p0, Landroidx/media2/session/i$b;->d:Landroidx/media2/session/i;

    iget-object v0, v0, Landroidx/media2/session/i;->g:Ljava/lang/Object;

    monitor-enter v0

    .line 1033
    :try_start_0
    iget-object v1, p0, Landroidx/media2/session/i$b;->d:Landroidx/media2/session/i;

    iget-boolean v1, v1, Landroidx/media2/session/i;->j:Z

    if-nez v1, :cond_13

    iget-object v1, p0, Landroidx/media2/session/i$b;->d:Landroidx/media2/session/i;

    iget-boolean v1, v1, Landroidx/media2/session/i;->B:Z

    if-nez v1, :cond_0

    goto/16 :goto_5

    .line 1036
    :cond_0
    iget-object v1, p0, Landroidx/media2/session/i$b;->d:Landroidx/media2/session/i;

    iget-object v1, v1, Landroidx/media2/session/i;->q:Landroidx/media2/common/MediaItem;

    .line 1037
    iget-object v2, p0, Landroidx/media2/session/i$b;->d:Landroidx/media2/session/i;

    iget-object v2, v2, Landroidx/media2/session/i;->z:Landroid/support/v4/media/session/PlaybackStateCompat;

    .line 1038
    iget-object v3, p0, Landroidx/media2/session/i$b;->d:Landroidx/media2/session/i;

    iput-object p1, v3, Landroidx/media2/session/i;->z:Landroid/support/v4/media/session/PlaybackStateCompat;

    .line 1039
    iget-object v3, p0, Landroidx/media2/session/i$b;->d:Landroidx/media2/session/i;

    invoke-static {p1}, Landroidx/media2/session/s;->a(Landroid/support/v4/media/session/PlaybackStateCompat;)I

    move-result v4

    iput v4, v3, Landroidx/media2/session/i;->p:I

    .line 1040
    iget-object v3, p0, Landroidx/media2/session/i$b;->d:Landroidx/media2/session/i;

    if-nez p1, :cond_1

    const-wide/high16 v4, -0x8000000000000000L

    goto :goto_0

    .line 1041
    :cond_1
    invoke-virtual {p1}, Landroid/support/v4/media/session/PlaybackStateCompat;->getBufferedPosition()J

    move-result-wide v4

    :goto_0
    iput-wide v4, v3, Landroidx/media2/session/i;->t:J

    .line 1043
    iget-object v3, p0, Landroidx/media2/session/i$b;->d:Landroidx/media2/session/i;

    iget-object v3, v3, Landroidx/media2/session/i;->l:Ljava/util/List;

    const/4 v4, 0x0

    if-eqz v3, :cond_3

    if-eqz p1, :cond_3

    const/4 v3, 0x0

    .line 1044
    :goto_1
    iget-object v5, p0, Landroidx/media2/session/i$b;->d:Landroidx/media2/session/i;

    iget-object v5, v5, Landroidx/media2/session/i;->l:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_3

    .line 1045
    iget-object v5, p0, Landroidx/media2/session/i$b;->d:Landroidx/media2/session/i;

    iget-object v5, v5, Landroidx/media2/session/i;->l:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;

    invoke-virtual {v5}, Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;->getQueueId()J

    move-result-wide v5

    invoke-virtual {p1}, Landroid/support/v4/media/session/PlaybackStateCompat;->getActiveQueueItemId()J

    move-result-wide v7

    cmp-long v9, v5, v7

    if-nez v9, :cond_2

    .line 1046
    iget-object v5, p0, Landroidx/media2/session/i$b;->d:Landroidx/media2/session/i;

    iput v3, v5, Landroidx/media2/session/i;->r:I

    .line 1047
    iget-object v5, p0, Landroidx/media2/session/i$b;->d:Landroidx/media2/session/i;

    iget-object v6, v5, Landroidx/media2/session/i;->k:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/media2/common/MediaItem;

    iput-object v6, v5, Landroidx/media2/session/i;->q:Landroidx/media2/common/MediaItem;

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1051
    :cond_3
    iget-object v3, p0, Landroidx/media2/session/i$b;->d:Landroidx/media2/session/i;

    iget-object v3, v3, Landroidx/media2/session/i;->q:Landroidx/media2/common/MediaItem;

    .line 1053
    iget-object v5, p0, Landroidx/media2/session/i$b;->d:Landroidx/media2/session/i;

    iget-object v5, v5, Landroidx/media2/session/i;->w:Ljava/util/List;

    .line 1054
    iget-object v6, p0, Landroidx/media2/session/i$b;->d:Landroidx/media2/session/i;

    invoke-static {p1}, Landroidx/media2/session/s;->b(Landroid/support/v4/media/session/PlaybackStateCompat;)Ljava/util/List;

    move-result-object v7

    iput-object v7, v6, Landroidx/media2/session/i;->w:Ljava/util/List;

    .line 1055
    iget-object v6, p0, Landroidx/media2/session/i$b;->d:Landroidx/media2/session/i;

    iget-object v6, v6, Landroidx/media2/session/i;->w:Ljava/util/List;

    .line 1057
    iget-object v7, p0, Landroidx/media2/session/i$b;->d:Landroidx/media2/session/i;

    iget-object v7, v7, Landroidx/media2/session/i;->v:Landroidx/media2/session/SessionCommandGroup;

    .line 1058
    iget-object v8, p0, Landroidx/media2/session/i$b;->d:Landroidx/media2/session/i;

    iget-object v9, v8, Landroidx/media2/session/i;->x:Landroid/support/v4/media/session/MediaControllerCompat;

    .line 1059
    invoke-virtual {v9}, Landroid/support/v4/media/session/MediaControllerCompat;->f()J

    move-result-wide v9

    iget-object v11, p0, Landroidx/media2/session/i$b;->d:Landroidx/media2/session/i;

    iget-object v11, v11, Landroidx/media2/session/i;->z:Landroid/support/v4/media/session/PlaybackStateCompat;

    .line 1058
    invoke-static {v9, v10, v11}, Landroidx/media2/session/s;->a(JLandroid/support/v4/media/session/PlaybackStateCompat;)Landroidx/media2/session/SessionCommandGroup;

    move-result-object v9

    iput-object v9, v8, Landroidx/media2/session/i;->v:Landroidx/media2/session/SessionCommandGroup;

    .line 1060
    iget-object v8, p0, Landroidx/media2/session/i$b;->d:Landroidx/media2/session/i;

    iget-object v8, v8, Landroidx/media2/session/i;->v:Landroidx/media2/session/SessionCommandGroup;

    .line 1061
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v1, v3, :cond_4

    .line 1064
    iget-object v0, p0, Landroidx/media2/session/i$b;->d:Landroidx/media2/session/i;

    iget-object v0, v0, Landroidx/media2/session/i;->h:Landroidx/media2/session/MediaController;

    new-instance v1, Landroidx/media2/session/i$b$10;

    invoke-direct {v1, p0, v3}, Landroidx/media2/session/i$b$10;-><init>(Landroidx/media2/session/i$b;Landroidx/media2/common/MediaItem;)V

    invoke-virtual {v0, v1}, Landroidx/media2/session/MediaController;->b(Landroidx/media2/session/MediaController$b;)V

    :cond_4
    if-nez p1, :cond_6

    if-eqz v2, :cond_5

    .line 1074
    iget-object p1, p0, Landroidx/media2/session/i$b;->d:Landroidx/media2/session/i;

    iget-object p1, p1, Landroidx/media2/session/i;->h:Landroidx/media2/session/MediaController;

    new-instance v0, Landroidx/media2/session/i$b$11;

    invoke-direct {v0, p0}, Landroidx/media2/session/i$b$11;-><init>(Landroidx/media2/session/i$b;)V

    invoke-virtual {p1, v0}, Landroidx/media2/session/MediaController;->b(Landroidx/media2/session/MediaController$b;)V

    :cond_5
    return-void

    :cond_6
    if-eqz v2, :cond_7

    .line 1083
    invoke-virtual {v2}, Landroid/support/v4/media/session/PlaybackStateCompat;->getState()I

    move-result v0

    invoke-virtual {p1}, Landroid/support/v4/media/session/PlaybackStateCompat;->getState()I

    move-result v1

    if-eq v0, v1, :cond_8

    .line 1084
    :cond_7
    iget-object v0, p0, Landroidx/media2/session/i$b;->d:Landroidx/media2/session/i;

    iget-object v0, v0, Landroidx/media2/session/i;->h:Landroidx/media2/session/MediaController;

    new-instance v1, Landroidx/media2/session/i$b$12;

    invoke-direct {v1, p0, p1}, Landroidx/media2/session/i$b$12;-><init>(Landroidx/media2/session/i$b;Landroid/support/v4/media/session/PlaybackStateCompat;)V

    invoke-virtual {v0, v1}, Landroidx/media2/session/MediaController;->b(Landroidx/media2/session/MediaController$b;)V

    :cond_8
    if-eqz v2, :cond_9

    .line 1092
    invoke-virtual {v2}, Landroid/support/v4/media/session/PlaybackStateCompat;->getPlaybackSpeed()F

    move-result v0

    invoke-virtual {p1}, Landroid/support/v4/media/session/PlaybackStateCompat;->getPlaybackSpeed()F

    move-result v1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_a

    .line 1093
    :cond_9
    iget-object v0, p0, Landroidx/media2/session/i$b;->d:Landroidx/media2/session/i;

    iget-object v0, v0, Landroidx/media2/session/i;->h:Landroidx/media2/session/MediaController;

    new-instance v1, Landroidx/media2/session/i$b$13;

    invoke-direct {v1, p0, p1}, Landroidx/media2/session/i$b$13;-><init>(Landroidx/media2/session/i$b;Landroid/support/v4/media/session/PlaybackStateCompat;)V

    invoke-virtual {v0, v1}, Landroidx/media2/session/MediaController;->b(Landroidx/media2/session/MediaController$b;)V

    :cond_a
    if-eqz v2, :cond_b

    .line 1102
    iget-object v0, p0, Landroidx/media2/session/i$b;->d:Landroidx/media2/session/i;

    iget-object v0, v0, Landroidx/media2/session/i;->h:Landroidx/media2/session/MediaController;

    iget-object v0, v0, Landroidx/media2/session/MediaController;->g:Ljava/lang/Long;

    invoke-virtual {p1, v0}, Landroid/support/v4/media/session/PlaybackStateCompat;->getCurrentPosition(Ljava/lang/Long;)J

    move-result-wide v0

    .line 1103
    iget-object v9, p0, Landroidx/media2/session/i$b;->d:Landroidx/media2/session/i;

    iget-object v9, v9, Landroidx/media2/session/i;->h:Landroidx/media2/session/MediaController;

    iget-object v9, v9, Landroidx/media2/session/MediaController;->g:Ljava/lang/Long;

    .line 1104
    invoke-virtual {v2, v9}, Landroid/support/v4/media/session/PlaybackStateCompat;->getCurrentPosition(Ljava/lang/Long;)J

    move-result-wide v9

    sub-long v9, v0, v9

    .line 1103
    invoke-static {v9, v10}, Ljava/lang/Math;->abs(J)J

    move-result-wide v9

    const-wide/16 v11, 0x64

    cmp-long v13, v9, v11

    if-lez v13, :cond_b

    .line 1106
    iget-object v9, p0, Landroidx/media2/session/i$b;->d:Landroidx/media2/session/i;

    iget-object v9, v9, Landroidx/media2/session/i;->h:Landroidx/media2/session/MediaController;

    new-instance v10, Landroidx/media2/session/i$b$14;

    invoke-direct {v10, p0, v0, v1}, Landroidx/media2/session/i$b$14;-><init>(Landroidx/media2/session/i$b;J)V

    invoke-virtual {v9, v10}, Landroidx/media2/session/MediaController;->b(Landroidx/media2/session/MediaController$b;)V

    .line 1115
    :cond_b
    invoke-virtual {v7, v8}, Landroidx/media2/session/SessionCommandGroup;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 1116
    iget-object v0, p0, Landroidx/media2/session/i$b;->d:Landroidx/media2/session/i;

    iget-object v0, v0, Landroidx/media2/session/i;->h:Landroidx/media2/session/MediaController;

    new-instance v1, Landroidx/media2/session/i$b$15;

    invoke-direct {v1, p0, v8}, Landroidx/media2/session/i$b$15;-><init>(Landroidx/media2/session/i$b;Landroidx/media2/session/SessionCommandGroup;)V

    invoke-virtual {v0, v1}, Landroidx/media2/session/MediaController;->b(Landroidx/media2/session/MediaController$b;)V

    .line 1124
    :cond_c
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_e

    const/4 v0, 0x0

    .line 1126
    :goto_2
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_d

    .line 1127
    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media2/session/MediaSession$CommandButton;

    .line 2052
    iget-object v1, v1, Landroidx/media2/session/MediaSession$CommandButton;->a:Landroidx/media2/session/SessionCommand;

    .line 1128
    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/media2/session/MediaSession$CommandButton;

    .line 3052
    iget-object v7, v7, Landroidx/media2/session/MediaSession$CommandButton;->a:Landroidx/media2/session/SessionCommand;

    .line 1127
    invoke-static {v1, v7}, Landroidx/core/e/a;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_d
    const/4 v0, 0x0

    goto :goto_3

    :cond_e
    const/4 v0, 0x1

    :goto_3
    if-eqz v0, :cond_f

    .line 1137
    iget-object v0, p0, Landroidx/media2/session/i$b;->d:Landroidx/media2/session/i;

    iget-object v0, v0, Landroidx/media2/session/i;->h:Landroidx/media2/session/MediaController;

    new-instance v1, Landroidx/media2/session/i$b$16;

    invoke-direct {v1, p0, v6}, Landroidx/media2/session/i$b$16;-><init>(Landroidx/media2/session/i$b;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroidx/media2/session/MediaController;->a(Landroidx/media2/session/MediaController$b;)V

    :cond_f
    if-nez v3, :cond_10

    return-void

    .line 1149
    :cond_10
    invoke-virtual {p1}, Landroid/support/v4/media/session/PlaybackStateCompat;->getState()I

    move-result p1

    invoke-static {p1}, Landroidx/media2/session/s;->b(I)I

    move-result p1

    if-nez v2, :cond_11

    goto :goto_4

    .line 1152
    :cond_11
    invoke-virtual {v2}, Landroid/support/v4/media/session/PlaybackStateCompat;->getState()I

    move-result v0

    invoke-static {v0}, Landroidx/media2/session/s;->b(I)I

    move-result v4

    :goto_4
    if-eq p1, v4, :cond_12

    .line 1154
    iget-object v0, p0, Landroidx/media2/session/i$b;->d:Landroidx/media2/session/i;

    iget-object v0, v0, Landroidx/media2/session/i;->h:Landroidx/media2/session/MediaController;

    new-instance v1, Landroidx/media2/session/i$b$17;

    invoke-direct {v1, p0, v3, p1}, Landroidx/media2/session/i$b$17;-><init>(Landroidx/media2/session/i$b;Landroidx/media2/common/MediaItem;I)V

    invoke-virtual {v0, v1}, Landroidx/media2/session/MediaController;->b(Landroidx/media2/session/MediaController$b;)V

    :cond_12
    return-void

    .line 1034
    :cond_13
    :goto_5
    :try_start_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    .line 1061
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final a(Ljava/lang/CharSequence;)V
    .locals 2

    .line 1217
    iget-object v0, p0, Landroidx/media2/session/i$b;->d:Landroidx/media2/session/i;

    iget-object v0, v0, Landroidx/media2/session/i;->g:Ljava/lang/Object;

    monitor-enter v0

    .line 1218
    :try_start_0
    iget-object v1, p0, Landroidx/media2/session/i$b;->d:Landroidx/media2/session/i;

    iget-boolean v1, v1, Landroidx/media2/session/i;->j:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Landroidx/media2/session/i$b;->d:Landroidx/media2/session/i;

    iget-boolean v1, v1, Landroidx/media2/session/i;->B:Z

    if-nez v1, :cond_0

    goto :goto_0

    .line 1221
    :cond_0
    iget-object v1, p0, Landroidx/media2/session/i$b;->d:Landroidx/media2/session/i;

    invoke-static {p1}, Landroidx/media2/session/s;->a(Ljava/lang/CharSequence;)Landroidx/media2/common/MediaMetadata;

    move-result-object p1

    iput-object p1, v1, Landroidx/media2/session/i;->m:Landroidx/media2/common/MediaMetadata;

    .line 1222
    iget-object p1, p0, Landroidx/media2/session/i$b;->d:Landroidx/media2/session/i;

    iget-object p1, p1, Landroidx/media2/session/i;->m:Landroidx/media2/common/MediaMetadata;

    .line 1223
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1224
    iget-object v0, p0, Landroidx/media2/session/i$b;->d:Landroidx/media2/session/i;

    iget-object v0, v0, Landroidx/media2/session/i;->h:Landroidx/media2/session/MediaController;

    new-instance v1, Landroidx/media2/session/i$b$4;

    invoke-direct {v1, p0, p1}, Landroidx/media2/session/i$b$4;-><init>(Landroidx/media2/session/i$b;Landroidx/media2/common/MediaMetadata;)V

    invoke-virtual {v0, v1}, Landroidx/media2/session/MediaController;->b(Landroidx/media2/session/MediaController$b;)V

    return-void

    .line 1219
    :cond_1
    :goto_0
    :try_start_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    .line 1223
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final a(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    .line 1009
    iget-object v0, p0, Landroidx/media2/session/i$b;->d:Landroidx/media2/session/i;

    iget-object v0, v0, Landroidx/media2/session/i;->g:Ljava/lang/Object;

    monitor-enter v0

    .line 1010
    :try_start_0
    iget-object v1, p0, Landroidx/media2/session/i$b;->d:Landroidx/media2/session/i;

    iget-boolean v1, v1, Landroidx/media2/session/i;->j:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Landroidx/media2/session/i$b;->d:Landroidx/media2/session/i;

    iget-boolean v1, v1, Landroidx/media2/session/i;->B:Z

    if-nez v1, :cond_0

    goto :goto_0

    .line 1013
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1014
    iget-object v0, p0, Landroidx/media2/session/i$b;->d:Landroidx/media2/session/i;

    iget-object v0, v0, Landroidx/media2/session/i;->h:Landroidx/media2/session/MediaController;

    new-instance v1, Landroidx/media2/session/i$b$1;

    invoke-direct {v1, p0, p1, p2}, Landroidx/media2/session/i$b$1;-><init>(Landroidx/media2/session/i$b;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Landroidx/media2/session/MediaController;->a(Landroidx/media2/session/MediaController$b;)V

    return-void

    .line 1011
    :cond_1
    :goto_0
    :try_start_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    .line 1013
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final a(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;",
            ">;)V"
        }
    .end annotation

    .line 1189
    iget-object v0, p0, Landroidx/media2/session/i$b;->d:Landroidx/media2/session/i;

    iget-object v0, v0, Landroidx/media2/session/i;->g:Ljava/lang/Object;

    monitor-enter v0

    .line 1190
    :try_start_0
    iget-object v1, p0, Landroidx/media2/session/i$b;->d:Landroidx/media2/session/i;

    iget-boolean v1, v1, Landroidx/media2/session/i;->j:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Landroidx/media2/session/i$b;->d:Landroidx/media2/session/i;

    iget-boolean v1, v1, Landroidx/media2/session/i;->B:Z

    if-nez v1, :cond_0

    goto :goto_2

    .line 1193
    :cond_0
    iget-object v1, p0, Landroidx/media2/session/i$b;->d:Landroidx/media2/session/i;

    invoke-static {p1}, Landroidx/media2/session/s;->g(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, v1, Landroidx/media2/session/i;->l:Ljava/util/List;

    .line 1194
    iget-object p1, p0, Landroidx/media2/session/i$b;->d:Landroidx/media2/session/i;

    iget-object p1, p1, Landroidx/media2/session/i;->l:Ljava/util/List;

    if-eqz p1, :cond_2

    iget-object p1, p0, Landroidx/media2/session/i$b;->d:Landroidx/media2/session/i;

    iget-object p1, p1, Landroidx/media2/session/i;->l:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    .line 1201
    :cond_1
    iget-object p1, p0, Landroidx/media2/session/i$b;->d:Landroidx/media2/session/i;

    iget-object v1, p1, Landroidx/media2/session/i;->l:Ljava/util/List;

    invoke-static {v1}, Landroidx/media2/session/s;->c(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p1, Landroidx/media2/session/i;->k:Ljava/util/List;

    goto :goto_1

    .line 1198
    :cond_2
    :goto_0
    iget-object p1, p0, Landroidx/media2/session/i$b;->d:Landroidx/media2/session/i;

    const/4 v1, 0x0

    iput-object v1, p1, Landroidx/media2/session/i;->l:Ljava/util/List;

    .line 1199
    iget-object p1, p0, Landroidx/media2/session/i$b;->d:Landroidx/media2/session/i;

    iput-object v1, p1, Landroidx/media2/session/i;->k:Ljava/util/List;

    .line 1203
    :goto_1
    iget-object p1, p0, Landroidx/media2/session/i$b;->d:Landroidx/media2/session/i;

    iget-object p1, p1, Landroidx/media2/session/i;->k:Ljava/util/List;

    .line 1204
    iget-object v1, p0, Landroidx/media2/session/i$b;->d:Landroidx/media2/session/i;

    iget-object v1, v1, Landroidx/media2/session/i;->m:Landroidx/media2/common/MediaMetadata;

    .line 1205
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1206
    iget-object v0, p0, Landroidx/media2/session/i$b;->d:Landroidx/media2/session/i;

    iget-object v0, v0, Landroidx/media2/session/i;->h:Landroidx/media2/session/MediaController;

    new-instance v2, Landroidx/media2/session/i$b$3;

    invoke-direct {v2, p0, p1, v1}, Landroidx/media2/session/i$b$3;-><init>(Landroidx/media2/session/i$b;Ljava/util/List;Landroidx/media2/common/MediaMetadata;)V

    invoke-virtual {v0, v2}, Landroidx/media2/session/MediaController;->b(Landroidx/media2/session/MediaController$b;)V

    return-void

    .line 1191
    :cond_3
    :goto_2
    :try_start_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    .line 1205
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final a(Z)V
    .locals 2

    .line 1267
    iget-object v0, p0, Landroidx/media2/session/i$b;->d:Landroidx/media2/session/i;

    iget-object v0, v0, Landroidx/media2/session/i;->g:Ljava/lang/Object;

    monitor-enter v0

    .line 1268
    :try_start_0
    iget-object v1, p0, Landroidx/media2/session/i$b;->d:Landroidx/media2/session/i;

    iget-boolean v1, v1, Landroidx/media2/session/i;->j:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Landroidx/media2/session/i$b;->d:Landroidx/media2/session/i;

    iget-boolean v1, v1, Landroidx/media2/session/i;->B:Z

    if-nez v1, :cond_0

    goto :goto_0

    .line 1271
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1272
    iget-object v0, p0, Landroidx/media2/session/i$b;->d:Landroidx/media2/session/i;

    iget-object v0, v0, Landroidx/media2/session/i;->h:Landroidx/media2/session/MediaController;

    new-instance v1, Landroidx/media2/session/i$b$7;

    invoke-direct {v1, p0, p1}, Landroidx/media2/session/i$b$7;-><init>(Landroidx/media2/session/i$b;Z)V

    invoke-virtual {v0, v1}, Landroidx/media2/session/MediaController;->a(Landroidx/media2/session/MediaController$b;)V

    return-void

    .line 1269
    :cond_1
    :goto_0
    :try_start_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    .line 1271
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final b()V
    .locals 1

    .line 1004
    iget-object v0, p0, Landroidx/media2/session/i$b;->d:Landroidx/media2/session/i;

    invoke-virtual {v0}, Landroidx/media2/session/i;->close()V

    return-void
.end method

.method public final b(I)V
    .locals 2

    .line 1301
    iget-object v0, p0, Landroidx/media2/session/i$b;->d:Landroidx/media2/session/i;

    iget-object v0, v0, Landroidx/media2/session/i;->g:Ljava/lang/Object;

    monitor-enter v0

    .line 1302
    :try_start_0
    iget-object v1, p0, Landroidx/media2/session/i$b;->d:Landroidx/media2/session/i;

    iget-boolean v1, v1, Landroidx/media2/session/i;->j:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Landroidx/media2/session/i$b;->d:Landroidx/media2/session/i;

    iget-boolean v1, v1, Landroidx/media2/session/i;->B:Z

    if-nez v1, :cond_0

    goto :goto_0

    .line 1305
    :cond_0
    iget-object v1, p0, Landroidx/media2/session/i$b;->d:Landroidx/media2/session/i;

    iput p1, v1, Landroidx/media2/session/i;->o:I

    .line 1306
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1307
    iget-object v0, p0, Landroidx/media2/session/i$b;->d:Landroidx/media2/session/i;

    iget-object v0, v0, Landroidx/media2/session/i;->h:Landroidx/media2/session/MediaController;

    new-instance v1, Landroidx/media2/session/i$b$9;

    invoke-direct {v1, p0, p1}, Landroidx/media2/session/i$b$9;-><init>(Landroidx/media2/session/i$b;I)V

    invoke-virtual {v0, v1}, Landroidx/media2/session/MediaController;->b(Landroidx/media2/session/MediaController$b;)V

    return-void

    .line 1303
    :cond_1
    :goto_0
    :try_start_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    .line 1306
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.class public Lcom/bytedance/sdk/openadsdk/core/video/d/b;
.super Lcom/bytedance/sdk/openadsdk/core/video/d/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/core/video/d/b$a;
    }
.end annotation


# instance fields
.field private final a:Landroid/media/MediaPlayer;

.field private final b:Lcom/bytedance/sdk/openadsdk/core/video/d/b$a;

.field private c:Lcom/bytedance/sdk/openadsdk/video/a/a;

.field private d:Landroid/view/Surface;

.field private final e:Ljava/lang/Object;

.field private f:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 58
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/d/a;-><init>()V

    .line 55
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/b;->e:Ljava/lang/Object;

    .line 59
    monitor-enter v0

    .line 60
    :try_start_0
    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/b;->a:Landroid/media/MediaPlayer;

    .line 61
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 62
    invoke-direct {p0, v1}, Lcom/bytedance/sdk/openadsdk/core/video/d/b;->a(Landroid/media/MediaPlayer;)V

    const/4 v0, 0x3

    .line 64
    :try_start_1
    invoke-virtual {v1, v0}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "AndroidMediaPlayer"

    const-string v2, "setAudioStreamType error: "

    .line 66
    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/utils/q;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 68
    :goto_0
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/video/d/b$a;

    invoke-direct {v0, p0, p0}, Lcom/bytedance/sdk/openadsdk/core/video/d/b$a;-><init>(Lcom/bytedance/sdk/openadsdk/core/video/d/b;Lcom/bytedance/sdk/openadsdk/core/video/d/b;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/b;->b:Lcom/bytedance/sdk/openadsdk/core/video/d/b$a;

    .line 69
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/d/b;->n()V

    return-void

    :catchall_1
    move-exception v1

    .line 61
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method private a(Landroid/media/MediaPlayer;)V
    .locals 11

    const-string v0, "AndroidMediaPlayer"

    .line 75
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_1

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-lt v1, v2, :cond_0

    goto/16 :goto_0

    :cond_0
    :try_start_0
    const-string v1, "android.media.MediaTimeProvider"

    .line 79
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "android.media.SubtitleController"

    .line 80
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "android.media.SubtitleController$Anchor"

    .line 81
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const-string v4, "android.media.SubtitleController$Listener"

    .line 82
    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const/4 v5, 0x3

    new-array v6, v5, [Ljava/lang/Class;

    .line 84
    const-class v7, Landroid/content/Context;

    const/4 v8, 0x0

    aput-object v7, v6, v8

    const/4 v7, 0x1

    aput-object v1, v6, v7

    const/4 v1, 0x2

    aput-object v4, v6, v1

    invoke-virtual {v2, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    new-array v5, v5, [Ljava/lang/Object;

    .line 85
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->a()Landroid/content/Context;

    move-result-object v6

    aput-object v6, v5, v8

    const/4 v6, 0x0

    aput-object v6, v5, v7

    aput-object v6, v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    const-string v5, "mHandler"

    .line 86
    invoke-virtual {v2, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    .line 87
    invoke-virtual {v5, v7}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 89
    :try_start_1
    new-instance v9, Landroid/os/Handler;

    invoke-direct {v9}, Landroid/os/Handler;-><init>()V

    invoke-virtual {v5, v4, v9}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 94
    :try_start_2
    invoke-virtual {v5, v8}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 96
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-string v9, "setSubtitleAnchor"

    new-array v10, v1, [Ljava/lang/Class;

    aput-object v2, v10, v8

    aput-object v3, v10, v7

    invoke-virtual {v5, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v4, v1, v8

    aput-object v6, v1, v7

    .line 97
    invoke-virtual {v2, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    return-void

    :catchall_0
    move-exception p1

    :try_start_3
    const-string v1, "subtitleInstance error: "

    .line 91
    invoke-static {v0, v1, p1}, Lcom/bytedance/sdk/openadsdk/utils/q;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 94
    :try_start_4
    invoke-virtual {v5, v8}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    return-void

    :catchall_1
    move-exception p1

    invoke-virtual {v5, v8}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 95
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception p1

    const-string v1, "setSubtitleController error: "

    .line 99
    invoke-static {v0, v1, p1}, Lcom/bytedance/sdk/openadsdk/utils/q;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private m()V
    .locals 3

    .line 163
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/b;->c:Lcom/bytedance/sdk/openadsdk/video/a/a;

    if-eqz v0, :cond_0

    .line 165
    :try_start_0
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/video/a/a;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "AndroidMediaPlayer"

    const-string v2, "releaseMediaDataSource error: "

    .line 167
    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/utils/q;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    const/4 v0, 0x0

    .line 169
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/b;->c:Lcom/bytedance/sdk/openadsdk/video/a/a;

    :cond_0
    return-void
.end method

.method private n()V
    .locals 2

    .line 273
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/b;->a:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/b;->b:Lcom/bytedance/sdk/openadsdk/core/video/d/b$a;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 274
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/b;->a:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/b;->b:Lcom/bytedance/sdk/openadsdk/core/video/d/b$a;

    .line 275
    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    .line 276
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/b;->a:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/b;->b:Lcom/bytedance/sdk/openadsdk/core/video/d/b$a;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 277
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/b;->a:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/b;->b:Lcom/bytedance/sdk/openadsdk/core/video/d/b$a;

    .line 278
    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V

    .line 279
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/b;->a:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/b;->b:Lcom/bytedance/sdk/openadsdk/core/video/d/b$a;

    .line 280
    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    .line 281
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/b;->a:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/b;->b:Lcom/bytedance/sdk/openadsdk/core/video/d/b$a;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 282
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/b;->a:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/b;->b:Lcom/bytedance/sdk/openadsdk/core/video/d/b$a;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    return-void
.end method

.method private o()V
    .locals 1

    .line 390
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/b;->d:Landroid/view/Surface;

    if-eqz v0, :cond_0

    .line 391
    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    const/4 v0, 0x0

    .line 392
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/b;->d:Landroid/view/Surface;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method


# virtual methods
.method public a(FF)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 247
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/b;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1, p2}, Landroid/media/MediaPlayer;->setVolume(FF)V

    return-void
.end method

.method public a(J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 195
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/b;->a:Landroid/media/MediaPlayer;

    long-to-int p2, p1

    invoke-virtual {v0, p2}, Landroid/media/MediaPlayer;->seekTo(I)V

    return-void
.end method

.method public a(Landroid/content/Context;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 262
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/b;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1, p2}, Landroid/media/MediaPlayer;->setWakeMode(Landroid/content/Context;I)V

    return-void
.end method

.method public a(Landroid/view/Surface;)V
    .locals 1

    .line 119
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/d/b;->o()V

    .line 120
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/b;->d:Landroid/view/Surface;

    .line 121
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/b;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    return-void
.end method

.method public a(Landroid/view/SurfaceHolder;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 109
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/b;->e:Ljava/lang/Object;

    monitor-enter v0

    .line 110
    :try_start_0
    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/b;->f:Z

    if-nez v1, :cond_0

    .line 111
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/b;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v1, p1}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 113
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public a(Ljava/io/FileDescriptor;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 137
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/b;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 126
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 127
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    .line 128
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "file"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 129
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/b;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    return-void

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/b;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    return-void
.end method

.method public declared-synchronized a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    .line 144
    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/k/g/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/b;->c:Lcom/bytedance/sdk/openadsdk/video/a/a;

    if-nez v0, :cond_1

    .line 148
    new-instance v0, Lcom/bytedance/sdk/openadsdk/video/b/a;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/video/b/a;-><init>()V

    .line 149
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/video/b/a;->a(Ljava/lang/String;)V

    .line 150
    invoke-virtual {v0, p2}, Lcom/bytedance/sdk/openadsdk/video/b/a;->b(Ljava/lang/String;)V

    .line 151
    new-instance p1, Lcom/bytedance/sdk/openadsdk/video/a/a;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->a()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2, v0}, Lcom/bytedance/sdk/openadsdk/video/a/a;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/video/b/a;)V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/b;->c:Lcom/bytedance/sdk/openadsdk/video/a/a;

    .line 153
    :cond_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/b;->a:Landroid/media/MediaPlayer;

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/b;->c:Lcom/bytedance/sdk/openadsdk/video/a/a;

    invoke-virtual {p1, p2}, Landroid/media/MediaPlayer;->setDataSource(Landroid/media/MediaDataSource;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 155
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public a(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 190
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/b;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setScreenOnWhilePlaying(Z)V

    return-void
.end method

.method public b(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 242
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/b;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setLooping(Z)V

    return-void
.end method

.method public e()Landroid/media/MediaPlayer;
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/b;->a:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method public f()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 175
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/b;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    return-void
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 384
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 385
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/d/b;->o()V

    return-void
.end method

.method public g()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 180
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/b;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    return-void
.end method

.method public h()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 185
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/b;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    return-void
.end method

.method public i()J
    .locals 3

    .line 201
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/b;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    int-to-long v0, v0

    return-wide v0

    :catchall_0
    move-exception v0

    const-string v1, "AndroidMediaPlayer"

    const-string v2, "getCurrentPosition error: "

    .line 203
    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/utils/q;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public j()J
    .locals 3

    .line 211
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/b;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    int-to-long v0, v0

    return-wide v0

    :catchall_0
    move-exception v0

    const-string v1, "AndroidMediaPlayer"

    const-string v2, "getDuration error: "

    .line 213
    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/utils/q;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public k()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 v0, 0x1

    .line 220
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/b;->f:Z

    .line 221
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/b;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 222
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/d/b;->o()V

    .line 223
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/d/b;->m()V

    .line 224
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/d/b;->a()V

    .line 225
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/d/b;->n()V

    return-void
.end method

.method public l()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 231
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/b;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "AndroidMediaPlayer"

    const-string v2, "reset error: "

    .line 233
    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/utils/q;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 235
    :goto_0
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/d/b;->m()V

    .line 236
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/d/b;->a()V

    .line 237
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/d/b;->n()V

    return-void
.end method

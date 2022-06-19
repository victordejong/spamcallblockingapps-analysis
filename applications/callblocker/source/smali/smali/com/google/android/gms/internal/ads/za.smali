.class public final Lcom/google/android/gms/internal/ads/za;
.super Lcom/google/android/gms/internal/ads/zo;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Landroid/media/MediaPlayer$OnBufferingUpdateListener;
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnInfoListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Landroid/media/MediaPlayer$OnVideoSizeChangedListener;
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation


# static fields
.field private static final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final d:Lcom/google/android/gms/internal/ads/aah;

.field private final e:Z

.field private f:I

.field private g:I

.field private h:Landroid/media/MediaPlayer;

.field private i:Landroid/net/Uri;

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:Lcom/google/android/gms/internal/ads/aab;

.field private p:Z

.field private q:I

.field private r:Lcom/google/android/gms/internal/ads/zl;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 272
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/za;->c:Ljava/util/Map;

    .line 273
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    .line 274
    sget-object v0, Lcom/google/android/gms/internal/ads/za;->c:Ljava/util/Map;

    const/16 v1, -0x3ec

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "MEDIA_ERROR_IO"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    sget-object v0, Lcom/google/android/gms/internal/ads/za;->c:Ljava/util/Map;

    const/16 v1, -0x3ef

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "MEDIA_ERROR_MALFORMED"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    sget-object v0, Lcom/google/android/gms/internal/ads/za;->c:Ljava/util/Map;

    const/16 v1, -0x3f2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "MEDIA_ERROR_UNSUPPORTED"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    sget-object v0, Lcom/google/android/gms/internal/ads/za;->c:Ljava/util/Map;

    const/16 v1, -0x6e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "MEDIA_ERROR_TIMED_OUT"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    sget-object v0, Lcom/google/android/gms/internal/ads/za;->c:Ljava/util/Map;

    const/4 v1, 0x3

    .line 279
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "MEDIA_INFO_VIDEO_RENDERING_START"

    .line 280
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/ads/za;->c:Ljava/util/Map;

    const/16 v1, 0x64

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "MEDIA_ERROR_SERVER_DIED"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    sget-object v0, Lcom/google/android/gms/internal/ads/za;->c:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "MEDIA_ERROR_UNKNOWN"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    sget-object v0, Lcom/google/android/gms/internal/ads/za;->c:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "MEDIA_INFO_UNKNOWN"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    sget-object v0, Lcom/google/android/gms/internal/ads/za;->c:Ljava/util/Map;

    const/16 v1, 0x2bc

    .line 285
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "MEDIA_INFO_VIDEO_TRACK_LAGGING"

    .line 286
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    sget-object v0, Lcom/google/android/gms/internal/ads/za;->c:Ljava/util/Map;

    const/16 v1, 0x2bd

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "MEDIA_INFO_BUFFERING_START"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    sget-object v0, Lcom/google/android/gms/internal/ads/za;->c:Ljava/util/Map;

    const/16 v1, 0x2be

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "MEDIA_INFO_BUFFERING_END"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    sget-object v0, Lcom/google/android/gms/internal/ads/za;->c:Ljava/util/Map;

    const/16 v1, 0x320

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "MEDIA_INFO_BAD_INTERLEAVING"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    sget-object v0, Lcom/google/android/gms/internal/ads/za;->c:Ljava/util/Map;

    const/16 v1, 0x321

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "MEDIA_INFO_NOT_SEEKABLE"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    sget-object v0, Lcom/google/android/gms/internal/ads/za;->c:Ljava/util/Map;

    const/16 v1, 0x322

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "MEDIA_INFO_METADATA_UPDATE"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_1

    .line 293
    sget-object v0, Lcom/google/android/gms/internal/ads/za;->c:Ljava/util/Map;

    const/16 v1, 0x385

    .line 294
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "MEDIA_INFO_UNSUPPORTED_SUBTITLE"

    .line 295
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    sget-object v0, Lcom/google/android/gms/internal/ads/za;->c:Ljava/util/Map;

    const/16 v1, 0x386

    .line 297
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "MEDIA_INFO_SUBTITLE_TIMED_OUT"

    .line 298
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    :cond_1
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZZLcom/google/android/gms/internal/ads/aae;Lcom/google/android/gms/internal/ads/aah;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zo;-><init>(Landroid/content/Context;)V

    .line 2
    iput v0, p0, Lcom/google/android/gms/internal/ads/za;->f:I

    .line 3
    iput v0, p0, Lcom/google/android/gms/internal/ads/za;->g:I

    .line 4
    invoke-virtual {p0, p0}, Lcom/google/android/gms/internal/ads/za;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 5
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/za;->d:Lcom/google/android/gms/internal/ads/aah;

    .line 6
    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/za;->p:Z

    .line 7
    iput-boolean p3, p0, Lcom/google/android/gms/internal/ads/za;->e:Z

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/za;->d:Lcom/google/android/gms/internal/ads/aah;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/aah;->a(Lcom/google/android/gms/internal/ads/zo;)V

    .line 9
    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/za;)Lcom/google/android/gms/internal/ads/zl;
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/za;->r:Lcom/google/android/gms/internal/ads/zl;

    return-object v0
.end method

.method private final a(F)V
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/za;->h:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 254
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/za;->h:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1, p1}, Landroid/media/MediaPlayer;->setVolume(FF)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 259
    :goto_0
    return-void

    .line 258
    :cond_0
    const-string/jumbo v0, "AdMediaPlayerView setMediaPlayerVolume() called before onPrepared()."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/uu;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 257
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private final a(Z)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 197
    const-string/jumbo v0, "AdMediaPlayerView release"

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/uu;->a(Ljava/lang/String;)V

    .line 198
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/za;->o:Lcom/google/android/gms/internal/ads/aab;

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/za;->o:Lcom/google/android/gms/internal/ads/aab;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/aab;->a()V

    .line 200
    iput-object v2, p0, Lcom/google/android/gms/internal/ads/za;->o:Lcom/google/android/gms/internal/ads/aab;

    .line 201
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/za;->h:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    .line 202
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/za;->h:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 203
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/za;->h:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 204
    iput-object v2, p0, Lcom/google/android/gms/internal/ads/za;->h:Landroid/media/MediaPlayer;

    .line 205
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/za;->h(I)V

    .line 206
    if-eqz p1, :cond_1

    .line 207
    iput v1, p0, Lcom/google/android/gms/internal/ads/za;->g:I

    .line 209
    iput v1, p0, Lcom/google/android/gms/internal/ads/za;->g:I

    .line 210
    :cond_1
    return-void
.end method

.method private final f()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 144
    const-string/jumbo v0, "AdMediaPlayerView init MediaPlayer"

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/uu;->a(Ljava/lang/String;)V

    .line 145
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/za;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v1

    .line 146
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/za;->i:Landroid/net/Uri;

    if-eqz v0, :cond_0

    if-nez v1, :cond_1

    .line 181
    :cond_0
    :goto_0
    return-void

    .line 148
    :cond_1
    invoke-direct {p0, v4}, Lcom/google/android/gms/internal/ads/za;->a(Z)V

    .line 149
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->s()Lcom/google/android/gms/ads/internal/overlay/w;

    .line 150
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    .line 151
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/za;->h:Landroid/media/MediaPlayer;

    .line 152
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/za;->h:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    .line 153
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/za;->h:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 154
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/za;->h:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 155
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/za;->h:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    .line 156
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/za;->h:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 157
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/za;->h:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    .line 158
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/za;->l:I

    .line 159
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/za;->p:Z

    if-eqz v0, :cond_3

    .line 160
    new-instance v0, Lcom/google/android/gms/internal/ads/aab;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/za;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/aab;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/za;->o:Lcom/google/android/gms/internal/ads/aab;

    .line 161
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/za;->o:Lcom/google/android/gms/internal/ads/aab;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/za;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/za;->getHeight()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/aab;->a(Landroid/graphics/SurfaceTexture;II)V

    .line 162
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/za;->o:Lcom/google/android/gms/internal/ads/aab;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/aab;->start()V

    .line 163
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/za;->o:Lcom/google/android/gms/internal/ads/aab;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/aab;->b()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    .line 164
    if-eqz v0, :cond_2

    .line 168
    :goto_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/za;->h:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/za;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/za;->i:Landroid/net/Uri;

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 169
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->t()Lcom/google/android/gms/ads/internal/overlay/v;

    .line 170
    new-instance v1, Landroid/view/Surface;

    invoke-direct {v1, v0}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    .line 172
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/za;->h:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    .line 173
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/za;->h:Landroid/media/MediaPlayer;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 174
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/za;->h:Landroid/media/MediaPlayer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setScreenOnWhilePlaying(Z)V

    .line 175
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/za;->h:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepareAsync()V

    .line 176
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/za;->h(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_0

    .line 178
    :catch_0
    move-exception v0

    .line 179
    :goto_2
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/za;->i:Landroid/net/Uri;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x24

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v2, "Failed to initialize MediaPlayer at "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/uu;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 180
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/za;->h:Landroid/media/MediaPlayer;

    invoke-virtual {p0, v0, v5, v4}, Lcom/google/android/gms/internal/ads/za;->onError(Landroid/media/MediaPlayer;II)Z

    goto/16 :goto_0

    .line 166
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/za;->o:Lcom/google/android/gms/internal/ads/aab;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/aab;->a()V

    .line 167
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/za;->o:Lcom/google/android/gms/internal/ads/aab;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_3
    move-object v0, v1

    goto :goto_1

    .line 178
    :catch_1
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v0

    goto :goto_2
.end method

.method private final g()V
    .locals 8

    .prologue
    .line 182
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/za;->e:Z

    if-nez v0, :cond_1

    .line 196
    :cond_0
    :goto_0
    return-void

    .line 184
    :cond_1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/za;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/za;->h:Landroid/media/MediaPlayer;

    .line 185
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    if-lez v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/ads/za;->g:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 186
    const-string/jumbo v0, "AdMediaPlayerView nudging MediaPlayer"

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/uu;->a(Ljava/lang/String;)V

    .line 187
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/za;->a(F)V

    .line 188
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/za;->h:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 189
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/za;->h:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    .line 190
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->j()Lcom/google/android/gms/common/util/e;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/e;->a()J

    move-result-wide v2

    .line 191
    :cond_2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/za;->h()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/za;->h:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v1

    if-ne v1, v0, :cond_3

    .line 192
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->j()Lcom/google/android/gms/common/util/e;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/e;->a()J

    move-result-wide v4

    .line 193
    sub-long/2addr v4, v2

    const-wide/16 v6, 0xfa

    cmp-long v1, v4, v6

    if-lez v1, :cond_2

    .line 194
    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/za;->h:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 195
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zo;->e()V

    goto :goto_0
.end method

.method private final h(I)V
    .locals 2

    .prologue
    const/4 v1, 0x3

    .line 260
    if-ne p1, v1, :cond_1

    .line 261
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/za;->d:Lcom/google/android/gms/internal/ads/aah;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/aah;->c()V

    .line 262
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/za;->b:Lcom/google/android/gms/internal/ads/aaj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/aaj;->b()V

    .line 266
    :cond_0
    :goto_0
    iput p1, p0, Lcom/google/android/gms/internal/ads/za;->f:I

    .line 267
    return-void

    .line 263
    :cond_1
    iget v0, p0, Lcom/google/android/gms/internal/ads/za;->f:I

    if-ne v0, v1, :cond_0

    .line 264
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/za;->d:Lcom/google/android/gms/internal/ads/aah;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/aah;->d()V

    .line 265
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/za;->b:Lcom/google/android/gms/internal/ads/aaj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/aaj;->c()V

    goto :goto_0
.end method

.method private final h()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 241
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/za;->h:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/google/android/gms/internal/ads/za;->f:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/google/android/gms/internal/ads/za;->f:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/google/android/gms/internal/ads/za;->f:I

    if-eq v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 3

    .prologue
    .line 10
    const-string/jumbo v1, "MediaPlayer"

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/za;->p:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, " spherical"

    :goto_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public final a(FF)V
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/za;->o:Lcom/google/android/gms/internal/ads/aab;

    if-eqz v0, :cond_0

    .line 243
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/za;->o:Lcom/google/android/gms/internal/ads/aab;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/aab;->a(FF)V

    .line 244
    :cond_0
    return-void
.end method

.method public final a(I)V
    .locals 2

    .prologue
    .line 235
    const/16 v0, 0x22

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v0, "AdMediaPlayerView seek "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/uu;->a(Ljava/lang/String;)V

    .line 236
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/za;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 237
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/za;->h:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 238
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/za;->q:I

    .line 240
    :goto_0
    return-void

    .line 239
    :cond_0
    iput p1, p0, Lcom/google/android/gms/internal/ads/za;->q:I

    goto :goto_0
.end method

.method public final a(Lcom/google/android/gms/internal/ads/zl;)V
    .locals 0

    .prologue
    .line 11
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/za;->r:Lcom/google/android/gms/internal/ads/zl;

    .line 12
    return-void
.end method

.method public final b()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 22
    const-string/jumbo v0, "AdMediaPlayerView stop"

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/uu;->a(Ljava/lang/String;)V

    .line 23
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/za;->h:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 24
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/za;->h:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 25
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/za;->h:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/za;->h:Landroid/media/MediaPlayer;

    .line 27
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/za;->h(I)V

    .line 29
    iput v1, p0, Lcom/google/android/gms/internal/ads/za;->g:I

    .line 30
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/za;->d:Lcom/google/android/gms/internal/ads/aah;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/aah;->b()V

    .line 31
    return-void
.end method

.method final synthetic b(I)V
    .locals 1

    .prologue
    .line 268
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/za;->r:Lcom/google/android/gms/internal/ads/zl;

    if-eqz v0, :cond_0

    .line 269
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/za;->r:Lcom/google/android/gms/internal/ads/zl;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zl;->onWindowVisibilityChanged(I)V

    .line 270
    :cond_0
    return-void
.end method

.method public final c()V
    .locals 3

    .prologue
    const/4 v2, 0x3

    .line 211
    const-string/jumbo v0, "AdMediaPlayerView play"

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/uu;->a(Ljava/lang/String;)V

    .line 212
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/za;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/za;->h:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 214
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/ads/za;->h(I)V

    .line 215
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/za;->a:Lcom/google/android/gms/internal/ads/zy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zy;->a()V

    .line 216
    sget-object v0, Lcom/google/android/gms/internal/ads/ve;->a:Lcom/google/android/gms/internal/ads/cnz;

    new-instance v1, Lcom/google/android/gms/internal/ads/zj;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zj;-><init>(Lcom/google/android/gms/internal/ads/za;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/cnz;->post(Ljava/lang/Runnable;)Z

    .line 218
    :cond_0
    iput v2, p0, Lcom/google/android/gms/internal/ads/za;->g:I

    .line 219
    return-void
.end method

.method public final d()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 220
    const-string/jumbo v0, "AdMediaPlayerView pause"

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/uu;->a(Ljava/lang/String;)V

    .line 221
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/za;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 222
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/za;->h:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 223
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/za;->h:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 224
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/ads/za;->h(I)V

    .line 225
    sget-object v0, Lcom/google/android/gms/internal/ads/ve;->a:Lcom/google/android/gms/internal/ads/cnz;

    new-instance v1, Lcom/google/android/gms/internal/ads/zm;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zm;-><init>(Lcom/google/android/gms/internal/ads/za;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/cnz;->post(Ljava/lang/Runnable;)Z

    .line 227
    :cond_0
    iput v2, p0, Lcom/google/android/gms/internal/ads/za;->g:I

    .line 228
    return-void
.end method

.method public final e()V
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/za;->b:Lcom/google/android/gms/internal/ads/aaj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/aaj;->a()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/za;->a(F)V

    .line 252
    return-void
.end method

.method public final getCurrentPosition()I
    .locals 1

    .prologue
    .line 232
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/za;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/za;->h:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    .line 234
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getDuration()I
    .locals 1

    .prologue
    .line 229
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/za;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 230
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/za;->h:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    .line 231
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public final getVideoHeight()I
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/za;->h:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 249
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/za;->h:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v0

    .line 250
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getVideoWidth()I
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/za;->h:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 246
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/za;->h:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v0

    .line 247
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final onBufferingUpdate(Landroid/media/MediaPlayer;I)V
    .locals 0

    .prologue
    .line 70
    iput p2, p0, Lcom/google/android/gms/internal/ads/za;->l:I

    .line 71
    return-void
.end method

.method public final onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2

    .prologue
    const/4 v1, 0x5

    .line 52
    const-string/jumbo v0, "AdMediaPlayerView completion"

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/uu;->a(Ljava/lang/String;)V

    .line 53
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/za;->h(I)V

    .line 55
    iput v1, p0, Lcom/google/android/gms/internal/ads/za;->g:I

    .line 56
    sget-object v0, Lcom/google/android/gms/internal/ads/ve;->a:Lcom/google/android/gms/internal/ads/cnz;

    new-instance v1, Lcom/google/android/gms/internal/ads/zg;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zg;-><init>(Lcom/google/android/gms/internal/ads/za;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/cnz;->post(Ljava/lang/Runnable;)Z

    .line 57
    return-void
.end method

.method public final onError(Landroid/media/MediaPlayer;II)Z
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 62
    sget-object v0, Lcom/google/android/gms/internal/ads/za;->c:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 63
    sget-object v1, Lcom/google/android/gms/internal/ads/za;->c:Ljava/util/Map;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 64
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x26

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v2, "AdMediaPlayerView MediaPlayer error: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/uu;->e(Ljava/lang/String;)V

    .line 65
    invoke-direct {p0, v4}, Lcom/google/android/gms/internal/ads/za;->h(I)V

    .line 67
    iput v4, p0, Lcom/google/android/gms/internal/ads/za;->g:I

    .line 68
    sget-object v2, Lcom/google/android/gms/internal/ads/ve;->a:Lcom/google/android/gms/internal/ads/cnz;

    new-instance v3, Lcom/google/android/gms/internal/ads/ze;

    invoke-direct {v3, p0, v0, v1}, Lcom/google/android/gms/internal/ads/ze;-><init>(Lcom/google/android/gms/internal/ads/za;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/cnz;->post(Ljava/lang/Runnable;)Z

    .line 69
    const/4 v0, 0x1

    return v0
.end method

.method public final onInfo(Landroid/media/MediaPlayer;II)Z
    .locals 4

    .prologue
    .line 58
    sget-object v0, Lcom/google/android/gms/internal/ads/za;->c:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 59
    sget-object v1, Lcom/google/android/gms/internal/ads/za;->c:Ljava/util/Map;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 60
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x25

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v2, "AdMediaPlayerView MediaPlayer info: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/uu;->a(Ljava/lang/String;)V

    .line 61
    const/4 v0, 0x1

    return v0
.end method

.method protected final onMeasure(II)V
    .locals 7

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    const/high16 v6, -0x80000000

    .line 102
    iget v0, p0, Lcom/google/android/gms/internal/ads/za;->j:I

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/za;->getDefaultSize(II)I

    move-result v1

    .line 103
    iget v0, p0, Lcom/google/android/gms/internal/ads/za;->k:I

    invoke-static {v0, p2}, Lcom/google/android/gms/internal/ads/za;->getDefaultSize(II)I

    move-result v0

    .line 104
    iget v2, p0, Lcom/google/android/gms/internal/ads/za;->j:I

    if-lez v2, :cond_a

    iget v2, p0, Lcom/google/android/gms/internal/ads/za;->k:I

    if-lez v2, :cond_a

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/za;->o:Lcom/google/android/gms/internal/ads/aab;

    if-nez v2, :cond_a

    .line 105
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    .line 106
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 107
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    .line 108
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 109
    if-ne v4, v3, :cond_7

    if-ne v5, v3, :cond_7

    .line 112
    iget v1, p0, Lcom/google/android/gms/internal/ads/za;->j:I

    mul-int/2addr v1, v0

    iget v3, p0, Lcom/google/android/gms/internal/ads/za;->k:I

    mul-int/2addr v3, v2

    if-ge v1, v3, :cond_6

    .line 113
    iget v1, p0, Lcom/google/android/gms/internal/ads/za;->j:I

    mul-int/2addr v1, v0

    iget v2, p0, Lcom/google/android/gms/internal/ads/za;->k:I

    div-int/2addr v1, v2

    move v2, v1

    .line 134
    :cond_0
    :goto_0
    invoke-virtual {p0, v2, v0}, Lcom/google/android/gms/internal/ads/za;->setMeasuredDimension(II)V

    .line 135
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/za;->o:Lcom/google/android/gms/internal/ads/aab;

    if-eqz v1, :cond_1

    .line 136
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/za;->o:Lcom/google/android/gms/internal/ads/aab;

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/ads/aab;->a(II)V

    .line 137
    :cond_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-ne v1, v3, :cond_5

    .line 138
    iget v1, p0, Lcom/google/android/gms/internal/ads/za;->m:I

    if-lez v1, :cond_2

    iget v1, p0, Lcom/google/android/gms/internal/ads/za;->m:I

    if-ne v1, v2, :cond_3

    :cond_2
    iget v1, p0, Lcom/google/android/gms/internal/ads/za;->n:I

    if-lez v1, :cond_4

    iget v1, p0, Lcom/google/android/gms/internal/ads/za;->n:I

    if-eq v1, v0, :cond_4

    .line 139
    :cond_3
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/za;->g()V

    .line 140
    :cond_4
    iput v2, p0, Lcom/google/android/gms/internal/ads/za;->m:I

    .line 141
    iput v0, p0, Lcom/google/android/gms/internal/ads/za;->n:I

    .line 142
    :cond_5
    return-void

    .line 114
    :cond_6
    iget v1, p0, Lcom/google/android/gms/internal/ads/za;->j:I

    mul-int/2addr v1, v0

    iget v3, p0, Lcom/google/android/gms/internal/ads/za;->k:I

    mul-int/2addr v3, v2

    if-le v1, v3, :cond_0

    .line 115
    iget v0, p0, Lcom/google/android/gms/internal/ads/za;->k:I

    mul-int/2addr v0, v2

    iget v1, p0, Lcom/google/android/gms/internal/ads/za;->j:I

    div-int/2addr v0, v1

    goto :goto_0

    .line 116
    :cond_7
    if-ne v4, v3, :cond_9

    .line 118
    iget v1, p0, Lcom/google/android/gms/internal/ads/za;->k:I

    mul-int/2addr v1, v2

    iget v3, p0, Lcom/google/android/gms/internal/ads/za;->j:I

    div-int/2addr v1, v3

    .line 119
    if-ne v5, v6, :cond_8

    if-gt v1, v0, :cond_0

    :cond_8
    move v0, v1

    goto :goto_0

    .line 121
    :cond_9
    if-ne v5, v3, :cond_b

    .line 123
    iget v1, p0, Lcom/google/android/gms/internal/ads/za;->j:I

    mul-int/2addr v1, v0

    iget v3, p0, Lcom/google/android/gms/internal/ads/za;->k:I

    div-int/2addr v1, v3

    .line 124
    if-ne v4, v6, :cond_a

    if-gt v1, v2, :cond_0

    :cond_a
    move v2, v1

    goto :goto_0

    .line 126
    :cond_b
    iget v1, p0, Lcom/google/android/gms/internal/ads/za;->j:I

    .line 127
    iget v3, p0, Lcom/google/android/gms/internal/ads/za;->k:I

    .line 128
    if-ne v5, v6, :cond_c

    if-le v3, v0, :cond_c

    .line 130
    iget v1, p0, Lcom/google/android/gms/internal/ads/za;->j:I

    mul-int/2addr v1, v0

    iget v3, p0, Lcom/google/android/gms/internal/ads/za;->k:I

    div-int/2addr v1, v3

    .line 131
    :goto_1
    if-ne v4, v6, :cond_a

    if-le v1, v2, :cond_a

    .line 133
    iget v0, p0, Lcom/google/android/gms/internal/ads/za;->k:I

    mul-int/2addr v0, v2

    iget v1, p0, Lcom/google/android/gms/internal/ads/za;->j:I

    div-int/2addr v0, v1

    goto :goto_0

    :cond_c
    move v0, v3

    goto :goto_1
.end method

.method public final onPrepared(Landroid/media/MediaPlayer;)V
    .locals 4

    .prologue
    .line 38
    const-string/jumbo v0, "AdMediaPlayerView prepared"

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/uu;->a(Ljava/lang/String;)V

    .line 39
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/za;->h(I)V

    .line 40
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/za;->d:Lcom/google/android/gms/internal/ads/aah;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/aah;->a()V

    .line 41
    sget-object v0, Lcom/google/android/gms/internal/ads/ve;->a:Lcom/google/android/gms/internal/ads/cnz;

    new-instance v1, Lcom/google/android/gms/internal/ads/zc;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zc;-><init>(Lcom/google/android/gms/internal/ads/za;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/cnz;->post(Ljava/lang/Runnable;)Z

    .line 42
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/za;->j:I

    .line 43
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/za;->k:I

    .line 44
    iget v0, p0, Lcom/google/android/gms/internal/ads/za;->q:I

    if-eqz v0, :cond_0

    .line 45
    iget v0, p0, Lcom/google/android/gms/internal/ads/za;->q:I

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zo;->a(I)V

    .line 46
    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/za;->g()V

    .line 47
    iget v0, p0, Lcom/google/android/gms/internal/ads/za;->j:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/za;->k:I

    const/16 v2, 0x3e

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v2, "AdMediaPlayerView stream dimensions: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " x "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/uu;->d(Ljava/lang/String;)V

    .line 48
    iget v0, p0, Lcom/google/android/gms/internal/ads/za;->g:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 49
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zo;->c()V

    .line 50
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zo;->e()V

    .line 51
    return-void
.end method

.method public final onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 2

    .prologue
    .line 72
    const-string/jumbo v0, "AdMediaPlayerView surface created"

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/uu;->a(Ljava/lang/String;)V

    .line 73
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/za;->f()V

    .line 74
    sget-object v0, Lcom/google/android/gms/internal/ads/ve;->a:Lcom/google/android/gms/internal/ads/cnz;

    new-instance v1, Lcom/google/android/gms/internal/ads/zi;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zi;-><init>(Lcom/google/android/gms/internal/ads/za;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/cnz;->post(Ljava/lang/Runnable;)Z

    .line 75
    return-void
.end method

.method public final onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 87
    const-string/jumbo v0, "AdMediaPlayerView surface destroyed"

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/uu;->a(Ljava/lang/String;)V

    .line 88
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/za;->h:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/ads/za;->q:I

    if-nez v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/za;->h:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/za;->q:I

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/za;->o:Lcom/google/android/gms/internal/ads/aab;

    if-eqz v0, :cond_1

    .line 91
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/za;->o:Lcom/google/android/gms/internal/ads/aab;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/aab;->a()V

    .line 92
    :cond_1
    sget-object v0, Lcom/google/android/gms/internal/ads/ve;->a:Lcom/google/android/gms/internal/ads/cnz;

    new-instance v1, Lcom/google/android/gms/internal/ads/zk;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zk;-><init>(Lcom/google/android/gms/internal/ads/za;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/cnz;->post(Ljava/lang/Runnable;)Z

    .line 93
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/ads/za;->a(Z)V

    .line 94
    return v2
.end method

.method public final onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 76
    const-string/jumbo v0, "AdMediaPlayerView surface changed"

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/uu;->a(Ljava/lang/String;)V

    .line 77
    iget v0, p0, Lcom/google/android/gms/internal/ads/za;->g:I

    const/4 v3, 0x3

    if-ne v0, v3, :cond_3

    move v0, v1

    .line 78
    :goto_0
    iget v3, p0, Lcom/google/android/gms/internal/ads/za;->j:I

    if-ne v3, p2, :cond_4

    iget v3, p0, Lcom/google/android/gms/internal/ads/za;->k:I

    if-ne v3, p3, :cond_4

    .line 79
    :goto_1
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/za;->h:Landroid/media/MediaPlayer;

    if-eqz v2, :cond_1

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    .line 80
    iget v0, p0, Lcom/google/android/gms/internal/ads/za;->q:I

    if-eqz v0, :cond_0

    .line 81
    iget v0, p0, Lcom/google/android/gms/internal/ads/za;->q:I

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zo;->a(I)V

    .line 82
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zo;->c()V

    .line 83
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/za;->o:Lcom/google/android/gms/internal/ads/aab;

    if-eqz v0, :cond_2

    .line 84
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/za;->o:Lcom/google/android/gms/internal/ads/aab;

    invoke-virtual {v0, p2, p3}, Lcom/google/android/gms/internal/ads/aab;->a(II)V

    .line 85
    :cond_2
    sget-object v0, Lcom/google/android/gms/internal/ads/ve;->a:Lcom/google/android/gms/internal/ads/cnz;

    new-instance v1, Lcom/google/android/gms/internal/ads/zh;

    invoke-direct {v1, p0, p2, p3}, Lcom/google/android/gms/internal/ads/zh;-><init>(Lcom/google/android/gms/internal/ads/za;II)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/cnz;->post(Ljava/lang/Runnable;)Z

    .line 86
    return-void

    :cond_3
    move v0, v2

    .line 77
    goto :goto_0

    :cond_4
    move v1, v2

    .line 78
    goto :goto_1
.end method

.method public final onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 2

    .prologue
    .line 95
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/za;->d:Lcom/google/android/gms/internal/ads/aah;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/aah;->b(Lcom/google/android/gms/internal/ads/zo;)V

    .line 96
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/za;->a:Lcom/google/android/gms/internal/ads/zy;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/za;->r:Lcom/google/android/gms/internal/ads/zl;

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zy;->a(Landroid/graphics/SurfaceTexture;Lcom/google/android/gms/internal/ads/zl;)V

    .line 97
    return-void
.end method

.method public final onVideoSizeChanged(Landroid/media/MediaPlayer;II)V
    .locals 2

    .prologue
    .line 32
    const/16 v0, 0x39

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v0, "AdMediaPlayerView size changed: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " x "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/uu;->a(Ljava/lang/String;)V

    .line 33
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/za;->j:I

    .line 34
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/za;->k:I

    .line 35
    iget v0, p0, Lcom/google/android/gms/internal/ads/za;->j:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/ads/za;->k:I

    if-eqz v0, :cond_0

    .line 36
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/za;->requestLayout()V

    .line 37
    :cond_0
    return-void
.end method

.method protected final onWindowVisibilityChanged(I)V
    .locals 2

    .prologue
    .line 98
    const/16 v0, 0x3a

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v0, "AdMediaPlayerView window visibility changed to "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/uu;->a(Ljava/lang/String;)V

    .line 99
    sget-object v0, Lcom/google/android/gms/internal/ads/ve;->a:Lcom/google/android/gms/internal/ads/cnz;

    new-instance v1, Lcom/google/android/gms/internal/ads/zd;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/zd;-><init>(Lcom/google/android/gms/internal/ads/za;I)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/cnz;->post(Ljava/lang/Runnable;)Z

    .line 100
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/zo;->onWindowVisibilityChanged(I)V

    .line 101
    return-void
.end method

.method public final setVideoPath(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 13
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 14
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/dvu;->a(Landroid/net/Uri;)Lcom/google/android/gms/internal/ads/dvu;

    move-result-object v1

    .line 15
    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/dvu;->a:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 16
    :cond_0
    if-nez v1, :cond_2

    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/za;->i:Landroid/net/Uri;

    .line 17
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/za;->q:I

    .line 18
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/za;->f()V

    .line 19
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/za;->requestLayout()V

    .line 20
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/za;->invalidate()V

    .line 21
    :cond_1
    return-void

    .line 16
    :cond_2
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/dvu;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 143
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "@"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

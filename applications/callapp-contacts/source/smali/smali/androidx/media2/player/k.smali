.class final Landroidx/media2/player/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media2/exoplayer/external/ai;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Landroidx/media2/exoplayer/external/audio/AudioSink;

.field private final c:Landroidx/media2/player/l;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroidx/media2/exoplayer/external/audio/AudioSink;Landroidx/media2/player/l;)V
    .locals 0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Landroidx/media2/player/k;->a:Landroid/content/Context;

    .line 61
    iput-object p2, p0, Landroidx/media2/player/k;->b:Landroidx/media2/exoplayer/external/audio/AudioSink;

    .line 62
    iput-object p3, p0, Landroidx/media2/player/k;->c:Landroidx/media2/player/l;

    return-void
.end method


# virtual methods
.method public final a(Landroid/os/Handler;Landroidx/media2/exoplayer/external/video/g;Landroidx/media2/exoplayer/external/audio/g;Landroidx/media2/exoplayer/external/text/i;Landroidx/media2/exoplayer/external/metadata/d;Landroidx/media2/exoplayer/external/drm/k;)[Landroidx/media2/exoplayer/external/ag;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Handler;",
            "Landroidx/media2/exoplayer/external/video/g;",
            "Landroidx/media2/exoplayer/external/audio/g;",
            "Landroidx/media2/exoplayer/external/text/i;",
            "Landroidx/media2/exoplayer/external/metadata/d;",
            "Landroidx/media2/exoplayer/external/drm/k<",
            "Landroidx/media2/exoplayer/external/drm/o;",
            ">;)[",
            "Landroidx/media2/exoplayer/external/ag;"
        }
    .end annotation

    move-object v0, p0

    const/4 v1, 0x4

    new-array v1, v1, [Landroidx/media2/exoplayer/external/ag;

    .line 73
    new-instance v12, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;

    iget-object v3, v0, Landroidx/media2/player/k;->a:Landroid/content/Context;

    sget-object v4, Landroidx/media2/exoplayer/external/mediacodec/b;->a:Landroidx/media2/exoplayer/external/mediacodec/b;

    const-wide/16 v5, 0x1388

    const/4 v8, 0x0

    const/16 v11, 0x32

    move-object v2, v12

    move-object/from16 v7, p6

    move-object v9, p1

    move-object v10, p2

    invoke-direct/range {v2 .. v11}, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;-><init>(Landroid/content/Context;Landroidx/media2/exoplayer/external/mediacodec/b;JLandroidx/media2/exoplayer/external/drm/k;ZLandroid/os/Handler;Landroidx/media2/exoplayer/external/video/g;I)V

    const/4 v2, 0x0

    aput-object v12, v1, v2

    new-instance v2, Landroidx/media2/exoplayer/external/audio/u;

    iget-object v4, v0, Landroidx/media2/player/k;->a:Landroid/content/Context;

    sget-object v5, Landroidx/media2/exoplayer/external/mediacodec/b;->a:Landroidx/media2/exoplayer/external/mediacodec/b;

    iget-object v10, v0, Landroidx/media2/player/k;->b:Landroidx/media2/exoplayer/external/audio/AudioSink;

    const/4 v7, 0x0

    move-object v3, v2

    move-object/from16 v6, p6

    move-object v8, p1

    move-object/from16 v9, p3

    invoke-direct/range {v3 .. v10}, Landroidx/media2/exoplayer/external/audio/u;-><init>(Landroid/content/Context;Landroidx/media2/exoplayer/external/mediacodec/b;Landroidx/media2/exoplayer/external/drm/k;ZLandroid/os/Handler;Landroidx/media2/exoplayer/external/audio/g;Landroidx/media2/exoplayer/external/audio/AudioSink;)V

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget-object v2, v0, Landroidx/media2/player/k;->c:Landroidx/media2/player/l;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    new-instance v2, Landroidx/media2/exoplayer/external/metadata/e;

    .line 94
    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    new-instance v4, Landroidx/media2/player/h;

    invoke-direct {v4}, Landroidx/media2/player/h;-><init>()V

    move-object/from16 v5, p5

    invoke-direct {v2, v5, v3, v4}, Landroidx/media2/exoplayer/external/metadata/e;-><init>(Landroidx/media2/exoplayer/external/metadata/d;Landroid/os/Looper;Landroidx/media2/exoplayer/external/metadata/b;)V

    const/4 v3, 0x3

    aput-object v2, v1, v3

    return-object v1
.end method

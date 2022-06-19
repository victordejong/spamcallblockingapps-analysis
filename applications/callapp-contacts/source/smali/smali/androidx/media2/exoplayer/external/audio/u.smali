.class public final Landroidx/media2/exoplayer/external/audio/u;
.super Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;
.source "SourceFile"

# interfaces
.implements Landroidx/media2/exoplayer/external/util/l;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/exoplayer/external/audio/u$a;
    }
.end annotation


# instance fields
.field private final b:Landroid/content/Context;

.field private final c:Landroidx/media2/exoplayer/external/audio/g$a;

.field private final d:Landroidx/media2/exoplayer/external/audio/AudioSink;

.field private final e:[J

.field private f:I

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:Landroid/media/MediaFormat;

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:J

.field private p:Z

.field private q:Z

.field private r:J

.field private s:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/media2/exoplayer/external/mediacodec/b;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 111
    invoke-direct {p0, p1, p2, v0, v1}, Landroidx/media2/exoplayer/external/audio/u;-><init>(Landroid/content/Context;Landroidx/media2/exoplayer/external/mediacodec/b;Landroidx/media2/exoplayer/external/drm/k;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/media2/exoplayer/external/mediacodec/b;Landroid/os/Handler;Landroidx/media2/exoplayer/external/audio/g;)V
    .locals 7

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    move-object v6, p4

    .line 155
    invoke-direct/range {v0 .. v6}, Landroidx/media2/exoplayer/external/audio/u;-><init>(Landroid/content/Context;Landroidx/media2/exoplayer/external/mediacodec/b;Landroidx/media2/exoplayer/external/drm/k;ZLandroid/os/Handler;Landroidx/media2/exoplayer/external/audio/g;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/media2/exoplayer/external/mediacodec/b;Landroidx/media2/exoplayer/external/drm/k;Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroidx/media2/exoplayer/external/mediacodec/b;",
            "Landroidx/media2/exoplayer/external/drm/k<",
            "Landroidx/media2/exoplayer/external/drm/o;",
            ">;Z)V"
        }
    .end annotation

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    .line 134
    invoke-direct/range {v0 .. v6}, Landroidx/media2/exoplayer/external/audio/u;-><init>(Landroid/content/Context;Landroidx/media2/exoplayer/external/mediacodec/b;Landroidx/media2/exoplayer/external/drm/k;ZLandroid/os/Handler;Landroidx/media2/exoplayer/external/audio/g;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/media2/exoplayer/external/mediacodec/b;Landroidx/media2/exoplayer/external/drm/k;ZLandroid/os/Handler;Landroidx/media2/exoplayer/external/audio/g;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroidx/media2/exoplayer/external/mediacodec/b;",
            "Landroidx/media2/exoplayer/external/drm/k<",
            "Landroidx/media2/exoplayer/external/drm/o;",
            ">;Z",
            "Landroid/os/Handler;",
            "Landroidx/media2/exoplayer/external/audio/g;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    new-array v9, v0, [Landroidx/media2/exoplayer/external/audio/AudioProcessor;

    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    .line 185
    invoke-direct/range {v1 .. v9}, Landroidx/media2/exoplayer/external/audio/u;-><init>(Landroid/content/Context;Landroidx/media2/exoplayer/external/mediacodec/b;Landroidx/media2/exoplayer/external/drm/k;ZLandroid/os/Handler;Landroidx/media2/exoplayer/external/audio/g;Landroidx/media2/exoplayer/external/audio/d;[Landroidx/media2/exoplayer/external/audio/AudioProcessor;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/media2/exoplayer/external/mediacodec/b;Landroidx/media2/exoplayer/external/drm/k;ZLandroid/os/Handler;Landroidx/media2/exoplayer/external/audio/g;Landroidx/media2/exoplayer/external/audio/AudioSink;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroidx/media2/exoplayer/external/mediacodec/b;",
            "Landroidx/media2/exoplayer/external/drm/k<",
            "Landroidx/media2/exoplayer/external/drm/o;",
            ">;Z",
            "Landroid/os/Handler;",
            "Landroidx/media2/exoplayer/external/audio/g;",
            "Landroidx/media2/exoplayer/external/audio/AudioSink;",
            ")V"
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v6, p5

    move-object v7, p6

    move-object/from16 v8, p7

    .line 255
    invoke-direct/range {v0 .. v8}, Landroidx/media2/exoplayer/external/audio/u;-><init>(Landroid/content/Context;Landroidx/media2/exoplayer/external/mediacodec/b;Landroidx/media2/exoplayer/external/drm/k;ZZLandroid/os/Handler;Landroidx/media2/exoplayer/external/audio/g;Landroidx/media2/exoplayer/external/audio/AudioSink;)V

    return-void
.end method

.method public varargs constructor <init>(Landroid/content/Context;Landroidx/media2/exoplayer/external/mediacodec/b;Landroidx/media2/exoplayer/external/drm/k;ZLandroid/os/Handler;Landroidx/media2/exoplayer/external/audio/g;Landroidx/media2/exoplayer/external/audio/d;[Landroidx/media2/exoplayer/external/audio/AudioProcessor;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroidx/media2/exoplayer/external/mediacodec/b;",
            "Landroidx/media2/exoplayer/external/drm/k<",
            "Landroidx/media2/exoplayer/external/drm/o;",
            ">;Z",
            "Landroid/os/Handler;",
            "Landroidx/media2/exoplayer/external/audio/g;",
            "Landroidx/media2/exoplayer/external/audio/d;",
            "[",
            "Landroidx/media2/exoplayer/external/audio/AudioProcessor;",
            ")V"
        }
    .end annotation

    .line 222
    new-instance v7, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;

    move-object v0, p7

    move-object/from16 v1, p8

    invoke-direct {v7, p7, v1}, Landroidx/media2/exoplayer/external/audio/DefaultAudioSink;-><init>(Landroidx/media2/exoplayer/external/audio/d;[Landroidx/media2/exoplayer/external/audio/AudioProcessor;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Landroidx/media2/exoplayer/external/audio/u;-><init>(Landroid/content/Context;Landroidx/media2/exoplayer/external/mediacodec/b;Landroidx/media2/exoplayer/external/drm/k;ZLandroid/os/Handler;Landroidx/media2/exoplayer/external/audio/g;Landroidx/media2/exoplayer/external/audio/AudioSink;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/media2/exoplayer/external/mediacodec/b;Landroidx/media2/exoplayer/external/drm/k;ZZLandroid/os/Handler;Landroidx/media2/exoplayer/external/audio/g;Landroidx/media2/exoplayer/external/audio/AudioSink;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroidx/media2/exoplayer/external/mediacodec/b;",
            "Landroidx/media2/exoplayer/external/drm/k<",
            "Landroidx/media2/exoplayer/external/drm/o;",
            ">;ZZ",
            "Landroid/os/Handler;",
            "Landroidx/media2/exoplayer/external/audio/g;",
            "Landroidx/media2/exoplayer/external/audio/AudioSink;",
            ")V"
        }
    .end annotation

    const/4 v1, 0x1

    const v6, 0x472c4400    # 44100.0f

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    .line 293
    invoke-direct/range {v0 .. v6}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;-><init>(ILandroidx/media2/exoplayer/external/mediacodec/b;Landroidx/media2/exoplayer/external/drm/k;ZZF)V

    .line 300
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Landroidx/media2/exoplayer/external/audio/u;->b:Landroid/content/Context;

    .line 301
    iput-object p8, p0, Landroidx/media2/exoplayer/external/audio/u;->d:Landroidx/media2/exoplayer/external/audio/AudioSink;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 302
    iput-wide p1, p0, Landroidx/media2/exoplayer/external/audio/u;->r:J

    const/16 p1, 0xa

    new-array p1, p1, [J

    .line 303
    iput-object p1, p0, Landroidx/media2/exoplayer/external/audio/u;->e:[J

    .line 304
    new-instance p1, Landroidx/media2/exoplayer/external/audio/g$a;

    invoke-direct {p1, p6, p7}, Landroidx/media2/exoplayer/external/audio/g$a;-><init>(Landroid/os/Handler;Landroidx/media2/exoplayer/external/audio/g;)V

    iput-object p1, p0, Landroidx/media2/exoplayer/external/audio/u;->c:Landroidx/media2/exoplayer/external/audio/g$a;

    .line 305
    new-instance p1, Landroidx/media2/exoplayer/external/audio/u$a;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Landroidx/media2/exoplayer/external/audio/u$a;-><init>(Landroidx/media2/exoplayer/external/audio/u;Landroidx/media2/exoplayer/external/audio/u$1;)V

    invoke-interface {p8, p1}, Landroidx/media2/exoplayer/external/audio/AudioSink;->a(Landroidx/media2/exoplayer/external/audio/AudioSink$a;)V

    return-void
.end method

.method private H()V
    .locals 5

    .line 874
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/u;->d:Landroidx/media2/exoplayer/external/audio/AudioSink;

    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/audio/u;->y()Z

    move-result v1

    invoke-interface {v0, v1}, Landroidx/media2/exoplayer/external/audio/AudioSink;->a(Z)J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 877
    iget-boolean v2, p0, Landroidx/media2/exoplayer/external/audio/u;->q:Z

    if-eqz v2, :cond_0

    goto :goto_0

    .line 879
    :cond_0
    iget-wide v2, p0, Landroidx/media2/exoplayer/external/audio/u;->o:J

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    :goto_0
    iput-wide v0, p0, Landroidx/media2/exoplayer/external/audio/u;->o:J

    const/4 v0, 0x0

    .line 880
    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/audio/u;->q:Z

    :cond_1
    return-void
.end method

.method private a(Landroidx/media2/exoplayer/external/mediacodec/a;Landroidx/media2/exoplayer/external/Format;)I
    .locals 1

    .line 806
    iget-object p1, p1, Landroidx/media2/exoplayer/external/mediacodec/a;->a:Ljava/lang/String;

    const-string v0, "OMX.google.raw.decoder"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 811
    sget p1, Landroidx/media2/exoplayer/external/util/ac;->a:I

    const/16 v0, 0x18

    if-ge p1, v0, :cond_1

    sget p1, Landroidx/media2/exoplayer/external/util/ac;->a:I

    const/16 v0, 0x17

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Landroidx/media2/exoplayer/external/audio/u;->b:Landroid/content/Context;

    invoke-static {p1}, Landroidx/media2/exoplayer/external/util/ac;->c(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_1

    :cond_0
    const/4 p1, -0x1

    return p1

    .line 815
    :cond_1
    iget p1, p2, Landroidx/media2/exoplayer/external/Format;->maxInputSize:I

    return p1
.end method

.method static synthetic a(Landroidx/media2/exoplayer/external/audio/u;)Landroidx/media2/exoplayer/external/audio/g$a;
    .locals 0

    .line 75
    iget-object p0, p0, Landroidx/media2/exoplayer/external/audio/u;->c:Landroidx/media2/exoplayer/external/audio/g$a;

    return-object p0
.end method

.method private a(ILjava/lang/String;)Z
    .locals 0

    .line 389
    invoke-direct {p0, p1, p2}, Landroidx/media2/exoplayer/external/audio/u;->b(ILjava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private b(ILjava/lang/String;)I
    .locals 2

    const-string v0, "audio/eac3-joc"

    .line 521
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 522
    iget-object p2, p0, Landroidx/media2/exoplayer/external/audio/u;->d:Landroidx/media2/exoplayer/external/audio/AudioSink;

    const/16 v1, 0x12

    invoke-interface {p2, p1, v1}, Landroidx/media2/exoplayer/external/audio/AudioSink;->a(II)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 523
    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/m;->h(Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_0
    const-string p2, "audio/eac3"

    .line 529
    :cond_1
    invoke-static {p2}, Landroidx/media2/exoplayer/external/util/m;->h(Ljava/lang/String;)I

    move-result p2

    .line 530
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/u;->d:Landroidx/media2/exoplayer/external/audio/AudioSink;

    invoke-interface {v0, p1, p2}, Landroidx/media2/exoplayer/external/audio/AudioSink;->a(II)Z

    move-result p1

    if-eqz p1, :cond_2

    return p2

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method static synthetic b(Landroidx/media2/exoplayer/external/audio/u;)Z
    .locals 1

    const/4 v0, 0x1

    .line 75
    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/audio/u;->q:Z

    return v0
.end method


# virtual methods
.method public final a(F[Landroidx/media2/exoplayer/external/Format;)F
    .locals 5

    .line 451
    array-length v0, p2

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v4, p2, v2

    .line 452
    iget v4, v4, Landroidx/media2/exoplayer/external/Format;->sampleRate:I

    if-eq v4, v1, :cond_0

    .line 454
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    if-ne v3, v1, :cond_2

    const/high16 p1, -0x40800000    # -1.0f

    return p1

    :cond_2
    int-to-float p2, v3

    mul-float p2, p2, p1

    return p2
.end method

.method public final a(Landroidx/media2/exoplayer/external/mediacodec/a;Landroidx/media2/exoplayer/external/Format;Landroidx/media2/exoplayer/external/Format;)I
    .locals 3

    .line 424
    invoke-direct {p0, p1, p3}, Landroidx/media2/exoplayer/external/audio/u;->a(Landroidx/media2/exoplayer/external/mediacodec/a;Landroidx/media2/exoplayer/external/Format;)I

    move-result v0

    iget v1, p0, Landroidx/media2/exoplayer/external/audio/u;->f:I

    const/4 v2, 0x0

    if-gt v0, v1, :cond_3

    iget v0, p2, Landroidx/media2/exoplayer/external/Format;->encoderDelay:I

    if-nez v0, :cond_3

    iget v0, p2, Landroidx/media2/exoplayer/external/Format;->encoderPadding:I

    if-nez v0, :cond_3

    iget v0, p3, Landroidx/media2/exoplayer/external/Format;->encoderDelay:I

    if-nez v0, :cond_3

    iget v0, p3, Landroidx/media2/exoplayer/external/Format;->encoderPadding:I

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x1

    .line 430
    invoke-virtual {p1, p2, p3, v0}, Landroidx/media2/exoplayer/external/mediacodec/a;->a(Landroidx/media2/exoplayer/external/Format;Landroidx/media2/exoplayer/external/Format;Z)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x3

    return p1

    .line 3830
    :cond_1
    iget-object p1, p2, Landroidx/media2/exoplayer/external/Format;->sampleMimeType:Ljava/lang/String;

    iget-object v1, p3, Landroidx/media2/exoplayer/external/Format;->sampleMimeType:Ljava/lang/String;

    invoke-static {p1, v1}, Landroidx/media2/exoplayer/external/util/ac;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget p1, p2, Landroidx/media2/exoplayer/external/Format;->channelCount:I

    iget v1, p3, Landroidx/media2/exoplayer/external/Format;->channelCount:I

    if-ne p1, v1, :cond_2

    iget p1, p2, Landroidx/media2/exoplayer/external/Format;->sampleRate:I

    iget v1, p3, Landroidx/media2/exoplayer/external/Format;->sampleRate:I

    if-ne p1, v1, :cond_2

    .line 3833
    invoke-virtual {p2, p3}, Landroidx/media2/exoplayer/external/Format;->initializationDataEquals(Landroidx/media2/exoplayer/external/Format;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_3

    return v0

    :cond_3
    :goto_1
    return v2
.end method

.method public final a(Landroidx/media2/exoplayer/external/mediacodec/b;Landroidx/media2/exoplayer/external/drm/k;Landroidx/media2/exoplayer/external/Format;)I
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/exoplayer/external/mediacodec/b;",
            "Landroidx/media2/exoplayer/external/drm/k<",
            "Landroidx/media2/exoplayer/external/drm/o;",
            ">;",
            "Landroidx/media2/exoplayer/external/Format;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$DecoderQueryException;
        }
    .end annotation

    .line 314
    iget-object v0, p3, Landroidx/media2/exoplayer/external/Format;->sampleMimeType:Ljava/lang/String;

    .line 315
    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/m;->a(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    .line 318
    :cond_0
    sget v1, Landroidx/media2/exoplayer/external/util/ac;->a:I

    const/16 v3, 0x15

    if-lt v1, v3, :cond_1

    const/16 v1, 0x20

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 319
    :goto_0
    iget-object v3, p3, Landroidx/media2/exoplayer/external/Format;->drmInitData:Landroidx/media2/exoplayer/external/drm/DrmInitData;

    const/4 v4, 0x1

    if-eqz v3, :cond_3

    const-class v3, Landroidx/media2/exoplayer/external/drm/o;

    iget-object v5, p3, Landroidx/media2/exoplayer/external/Format;->exoMediaCryptoType:Ljava/lang/Class;

    .line 321
    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p3, Landroidx/media2/exoplayer/external/Format;->exoMediaCryptoType:Ljava/lang/Class;

    if-nez v3, :cond_2

    iget-object v3, p3, Landroidx/media2/exoplayer/external/Format;->drmInitData:Landroidx/media2/exoplayer/external/drm/DrmInitData;

    .line 323
    invoke-static {p2, v3}, Landroidx/media2/exoplayer/external/audio/u;->a(Landroidx/media2/exoplayer/external/drm/k;Landroidx/media2/exoplayer/external/drm/DrmInitData;)Z

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_1

    :cond_2
    const/4 p2, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 p2, 0x1

    :goto_2
    const/4 v3, 0x4

    const/16 v5, 0x8

    if-eqz p2, :cond_4

    .line 324
    iget v6, p3, Landroidx/media2/exoplayer/external/Format;->channelCount:I

    .line 325
    invoke-direct {p0, v6, v0}, Landroidx/media2/exoplayer/external/audio/u;->a(ILjava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 326
    invoke-interface {p1}, Landroidx/media2/exoplayer/external/mediacodec/b;->a()Landroidx/media2/exoplayer/external/mediacodec/a;

    move-result-object v6

    if-eqz v6, :cond_4

    or-int/lit8 p1, v1, 0x8

    or-int/2addr p1, v3

    return p1

    :cond_4
    const-string v6, "audio/raw"

    .line 329
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/u;->d:Landroidx/media2/exoplayer/external/audio/AudioSink;

    iget v6, p3, Landroidx/media2/exoplayer/external/Format;->channelCount:I

    iget v7, p3, Landroidx/media2/exoplayer/external/Format;->pcmEncoding:I

    .line 330
    invoke-interface {v0, v6, v7}, Landroidx/media2/exoplayer/external/audio/AudioSink;->a(II)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_5
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/u;->d:Landroidx/media2/exoplayer/external/audio/AudioSink;

    iget v6, p3, Landroidx/media2/exoplayer/external/Format;->channelCount:I

    const/4 v7, 0x2

    .line 331
    invoke-interface {v0, v6, v7}, Landroidx/media2/exoplayer/external/audio/AudioSink;->a(II)Z

    move-result v0

    if-nez v0, :cond_7

    :cond_6
    return v4

    .line 336
    :cond_7
    invoke-virtual {p0, p1, p3, v2}, Landroidx/media2/exoplayer/external/audio/u;->a(Landroidx/media2/exoplayer/external/mediacodec/b;Landroidx/media2/exoplayer/external/Format;Z)Ljava/util/List;

    move-result-object p1

    .line 337
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    return v4

    :cond_8
    if-nez p2, :cond_9

    return v7

    .line 344
    :cond_9
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media2/exoplayer/external/mediacodec/a;

    .line 345
    invoke-virtual {p1, p3}, Landroidx/media2/exoplayer/external/mediacodec/a;->a(Landroidx/media2/exoplayer/external/Format;)Z

    move-result p2

    if-eqz p2, :cond_a

    .line 347
    invoke-virtual {p1, p3}, Landroidx/media2/exoplayer/external/mediacodec/a;->b(Landroidx/media2/exoplayer/external/Format;)Z

    move-result p1

    if-eqz p1, :cond_a

    const/16 v5, 0x10

    :cond_a
    if-eqz p2, :cond_b

    goto :goto_3

    :cond_b
    const/4 v3, 0x3

    :goto_3
    or-int p1, v5, v1

    or-int/2addr p1, v3

    return p1
.end method

.method public final a(Landroidx/media2/exoplayer/external/mediacodec/b;Landroidx/media2/exoplayer/external/Format;Z)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/exoplayer/external/mediacodec/b;",
            "Landroidx/media2/exoplayer/external/Format;",
            "Z)",
            "Ljava/util/List<",
            "Landroidx/media2/exoplayer/external/mediacodec/a;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$DecoderQueryException;
        }
    .end annotation

    .line 358
    iget v0, p2, Landroidx/media2/exoplayer/external/Format;->channelCount:I

    iget-object v1, p2, Landroidx/media2/exoplayer/external/Format;->sampleMimeType:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Landroidx/media2/exoplayer/external/audio/u;->a(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 359
    invoke-interface {p1}, Landroidx/media2/exoplayer/external/mediacodec/b;->a()Landroidx/media2/exoplayer/external/mediacodec/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 361
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 364
    :cond_0
    iget-object v0, p2, Landroidx/media2/exoplayer/external/Format;->sampleMimeType:Ljava/lang/String;

    const/4 v1, 0x0

    .line 365
    invoke-interface {p1, v0, p3, v1}, Landroidx/media2/exoplayer/external/mediacodec/b;->a(Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v0

    .line 367
    invoke-static {v0, p2}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->a(Ljava/util/List;Landroidx/media2/exoplayer/external/Format;)Ljava/util/List;

    move-result-object v0

    .line 368
    iget-object p2, p2, Landroidx/media2/exoplayer/external/Format;->sampleMimeType:Ljava/lang/String;

    const-string v2, "audio/eac3-joc"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    const-string p2, "audio/eac3"

    .line 371
    invoke-interface {p1, p2, p3, v1}, Landroidx/media2/exoplayer/external/mediacodec/b;->a(Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object p1

    .line 373
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 375
    :cond_1
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final a(ILjava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ExoPlaybackException;
        }
    .end annotation

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    .line 766
    invoke-super {p0, p1, p2}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->a(ILjava/lang/Object;)V

    return-void

    .line 762
    :cond_0
    check-cast p2, Landroidx/media2/exoplayer/external/audio/p;

    .line 763
    iget-object p1, p0, Landroidx/media2/exoplayer/external/audio/u;->d:Landroidx/media2/exoplayer/external/audio/AudioSink;

    invoke-interface {p1, p2}, Landroidx/media2/exoplayer/external/audio/AudioSink;->a(Landroidx/media2/exoplayer/external/audio/p;)V

    return-void

    .line 758
    :cond_1
    check-cast p2, Landroidx/media2/exoplayer/external/audio/c;

    .line 759
    iget-object p1, p0, Landroidx/media2/exoplayer/external/audio/u;->d:Landroidx/media2/exoplayer/external/audio/AudioSink;

    invoke-interface {p1, p2}, Landroidx/media2/exoplayer/external/audio/AudioSink;->a(Landroidx/media2/exoplayer/external/audio/c;)V

    return-void

    .line 755
    :cond_2
    iget-object p1, p0, Landroidx/media2/exoplayer/external/audio/u;->d:Landroidx/media2/exoplayer/external/audio/AudioSink;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-interface {p1, p2}, Landroidx/media2/exoplayer/external/audio/AudioSink;->a(F)V

    return-void
.end method

.method public final a(JZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ExoPlaybackException;
        }
    .end annotation

    .line 594
    invoke-super {p0, p1, p2, p3}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->a(JZ)V

    .line 595
    iget-object p3, p0, Landroidx/media2/exoplayer/external/audio/u;->d:Landroidx/media2/exoplayer/external/audio/AudioSink;

    invoke-interface {p3}, Landroidx/media2/exoplayer/external/audio/AudioSink;->i()V

    .line 596
    iput-wide p1, p0, Landroidx/media2/exoplayer/external/audio/u;->o:J

    const/4 p1, 0x1

    .line 597
    iput-boolean p1, p0, Landroidx/media2/exoplayer/external/audio/u;->p:Z

    .line 598
    iput-boolean p1, p0, Landroidx/media2/exoplayer/external/audio/u;->q:Z

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 599
    iput-wide p1, p0, Landroidx/media2/exoplayer/external/audio/u;->r:J

    const/4 p1, 0x0

    .line 600
    iput p1, p0, Landroidx/media2/exoplayer/external/audio/u;->s:I

    return-void
.end method

.method public final a(Landroid/media/MediaCodec;Landroid/media/MediaFormat;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ExoPlaybackException;
        }
    .end annotation

    .line 485
    iget-object p1, p0, Landroidx/media2/exoplayer/external/audio/u;->j:Landroid/media/MediaFormat;

    const-string v0, "channel-count"

    if-eqz p1, :cond_0

    .line 489
    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p2

    const-string v1, "mime"

    .line 490
    invoke-virtual {p1, v1}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 488
    invoke-direct {p0, p2, v1}, Landroidx/media2/exoplayer/external/audio/u;->b(ILjava/lang/String;)I

    move-result p2

    move v2, p2

    move-object p2, p1

    goto :goto_0

    .line 493
    :cond_0
    iget p1, p0, Landroidx/media2/exoplayer/external/audio/u;->k:I

    move v2, p1

    .line 495
    :goto_0
    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v3

    const-string p1, "sample-rate"

    .line 496
    invoke-virtual {p2, p1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v4

    .line 498
    iget-boolean p1, p0, Landroidx/media2/exoplayer/external/audio/u;->h:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x6

    if-ne v3, p1, :cond_1

    iget p2, p0, Landroidx/media2/exoplayer/external/audio/u;->l:I

    if-ge p2, p1, :cond_1

    .line 499
    new-array p1, p2, [I

    const/4 p2, 0x0

    .line 500
    :goto_1
    iget v0, p0, Landroidx/media2/exoplayer/external/audio/u;->l:I

    if-ge p2, v0, :cond_2

    .line 501
    aput p2, p1, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :cond_2
    move-object v5, p1

    .line 508
    :try_start_0
    iget-object v1, p0, Landroidx/media2/exoplayer/external/audio/u;->d:Landroidx/media2/exoplayer/external/audio/AudioSink;

    iget v6, p0, Landroidx/media2/exoplayer/external/audio/u;->m:I

    iget v7, p0, Landroidx/media2/exoplayer/external/audio/u;->n:I

    invoke-interface/range {v1 .. v7}, Landroidx/media2/exoplayer/external/audio/AudioSink;->a(III[III)V
    :try_end_0
    .catch Landroidx/media2/exoplayer/external/audio/AudioSink$ConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 511
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/audio/u;->v()I

    move-result p2

    invoke-static {p1, p2}, Landroidx/media2/exoplayer/external/ExoPlaybackException;->a(Ljava/lang/Exception;I)Landroidx/media2/exoplayer/external/ExoPlaybackException;

    move-result-object p1

    throw p1
.end method

.method public final a(Landroidx/media2/exoplayer/external/ad;)V
    .locals 1

    .line 660
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/u;->d:Landroidx/media2/exoplayer/external/audio/AudioSink;

    invoke-interface {v0, p1}, Landroidx/media2/exoplayer/external/audio/AudioSink;->a(Landroidx/media2/exoplayer/external/ad;)V

    return-void
.end method

.method public final a(Landroidx/media2/exoplayer/external/b/e;)V
    .locals 5

    .line 670
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/audio/u;->p:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/b/e;->l_()Z

    move-result v0

    if-nez v0, :cond_1

    .line 674
    iget-wide v0, p1, Landroidx/media2/exoplayer/external/b/e;->d:J

    iget-wide v2, p0, Landroidx/media2/exoplayer/external/audio/u;->o:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/32 v2, 0x7a120

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 675
    iget-wide v0, p1, Landroidx/media2/exoplayer/external/b/e;->d:J

    iput-wide v0, p0, Landroidx/media2/exoplayer/external/audio/u;->o:J

    :cond_0
    const/4 v0, 0x0

    .line 677
    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/audio/u;->p:Z

    .line 679
    :cond_1
    iget-wide v0, p1, Landroidx/media2/exoplayer/external/b/e;->d:J

    iget-wide v2, p0, Landroidx/media2/exoplayer/external/audio/u;->r:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/media2/exoplayer/external/audio/u;->r:J

    return-void
.end method

.method public final a(Landroidx/media2/exoplayer/external/mediacodec/a;Landroid/media/MediaCodec;Landroidx/media2/exoplayer/external/Format;Landroid/media/MediaCrypto;F)V
    .locals 8

    .line 399
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/audio/u;->t()[Landroidx/media2/exoplayer/external/Format;

    move-result-object v0

    .line 1782
    invoke-direct {p0, p1, p3}, Landroidx/media2/exoplayer/external/audio/u;->a(Landroidx/media2/exoplayer/external/mediacodec/a;Landroidx/media2/exoplayer/external/Format;)I

    move-result v1

    .line 1783
    array-length v2, v0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq v2, v3, :cond_1

    .line 1788
    array-length v2, v0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v2, :cond_1

    aget-object v6, v0, v5

    .line 1789
    invoke-virtual {p1, p3, v6, v4}, Landroidx/media2/exoplayer/external/mediacodec/a;->a(Landroidx/media2/exoplayer/external/Format;Landroidx/media2/exoplayer/external/Format;Z)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1791
    invoke-direct {p0, p1, v6}, Landroidx/media2/exoplayer/external/audio/u;->a(Landroidx/media2/exoplayer/external/mediacodec/a;Landroidx/media2/exoplayer/external/Format;)I

    move-result v6

    invoke-static {v1, v6}, Ljava/lang/Math;->max(II)I

    move-result v1

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 399
    :cond_1
    iput v1, p0, Landroidx/media2/exoplayer/external/audio/u;->f:I

    .line 400
    iget-object v0, p1, Landroidx/media2/exoplayer/external/mediacodec/a;->a:Ljava/lang/String;

    .line 1903
    sget v1, Landroidx/media2/exoplayer/external/util/ac;->a:I

    const/16 v2, 0x18

    const-string v5, "samsung"

    if-ge v1, v2, :cond_3

    const-string v1, "OMX.SEC.aac.dec"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Landroidx/media2/exoplayer/external/util/ac;->c:Ljava/lang/String;

    .line 1904
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Landroidx/media2/exoplayer/external/util/ac;->b:Ljava/lang/String;

    const-string v1, "zeroflte"

    .line 1905
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Landroidx/media2/exoplayer/external/util/ac;->b:Ljava/lang/String;

    const-string v1, "herolte"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Landroidx/media2/exoplayer/external/util/ac;->b:Ljava/lang/String;

    const-string v1, "heroqlte"

    .line 1906
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    .line 400
    :goto_1
    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/audio/u;->h:Z

    .line 401
    iget-object v0, p1, Landroidx/media2/exoplayer/external/mediacodec/a;->a:Ljava/lang/String;

    .line 1916
    sget v1, Landroidx/media2/exoplayer/external/util/ac;->a:I

    const/16 v2, 0x15

    if-ge v1, v2, :cond_5

    const-string v1, "OMX.SEC.mp3.dec"

    .line 1917
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Landroidx/media2/exoplayer/external/util/ac;->c:Ljava/lang/String;

    .line 1918
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Landroidx/media2/exoplayer/external/util/ac;->b:Ljava/lang/String;

    const-string v1, "baffin"

    .line 1919
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Landroidx/media2/exoplayer/external/util/ac;->b:Ljava/lang/String;

    const-string v1, "grand"

    .line 1920
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Landroidx/media2/exoplayer/external/util/ac;->b:Ljava/lang/String;

    const-string v1, "fortuna"

    .line 1921
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Landroidx/media2/exoplayer/external/util/ac;->b:Ljava/lang/String;

    const-string v1, "gprimelte"

    .line 1922
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Landroidx/media2/exoplayer/external/util/ac;->b:Ljava/lang/String;

    const-string v1, "j2y18lte"

    .line 1923
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Landroidx/media2/exoplayer/external/util/ac;->b:Ljava/lang/String;

    const-string v1, "ms01"

    .line 1924
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    const/4 v0, 0x1

    goto :goto_2

    :cond_5
    const/4 v0, 0x0

    .line 401
    :goto_2
    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/audio/u;->i:Z

    .line 402
    iget-boolean v0, p1, Landroidx/media2/exoplayer/external/mediacodec/a;->h:Z

    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/audio/u;->g:Z

    if-eqz v0, :cond_6

    const-string p1, "audio/raw"

    goto :goto_3

    .line 403
    :cond_6
    iget-object p1, p1, Landroidx/media2/exoplayer/external/mediacodec/a;->c:Ljava/lang/String;

    .line 404
    :goto_3
    iget v0, p0, Landroidx/media2/exoplayer/external/audio/u;->f:I

    .line 2850
    new-instance v1, Landroid/media/MediaFormat;

    invoke-direct {v1}, Landroid/media/MediaFormat;-><init>()V

    const-string v2, "mime"

    .line 2852
    invoke-virtual {v1, v2, p1}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2853
    iget p1, p3, Landroidx/media2/exoplayer/external/Format;->channelCount:I

    const-string v5, "channel-count"

    invoke-virtual {v1, v5, p1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 2854
    iget p1, p3, Landroidx/media2/exoplayer/external/Format;->sampleRate:I

    const-string v5, "sample-rate"

    invoke-virtual {v1, v5, p1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 2855
    iget-object p1, p3, Landroidx/media2/exoplayer/external/Format;->initializationData:Ljava/util/List;

    invoke-static {v1, p1}, Landroidx/media2/exoplayer/external/mediacodec/g;->a(Landroid/media/MediaFormat;Ljava/util/List;)V

    const-string p1, "max-input-size"

    .line 2857
    invoke-static {v1, p1, v0}, Landroidx/media2/exoplayer/external/mediacodec/g;->a(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 2859
    sget p1, Landroidx/media2/exoplayer/external/util/ac;->a:I

    const/16 v0, 0x17

    if-lt p1, v0, :cond_9

    const-string p1, "priority"

    .line 2860
    invoke-virtual {v1, p1, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const/high16 p1, -0x40800000    # -1.0f

    cmpl-float p1, p5, p1

    if-eqz p1, :cond_9

    .line 2891
    sget p1, Landroidx/media2/exoplayer/external/util/ac;->a:I

    if-ne p1, v0, :cond_8

    sget-object p1, Landroidx/media2/exoplayer/external/util/ac;->d:Ljava/lang/String;

    const-string v0, "ZTE B2017G"

    .line 2892
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    sget-object p1, Landroidx/media2/exoplayer/external/util/ac;->d:Ljava/lang/String;

    const-string v0, "AXON 7 mini"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    :cond_7
    const/4 p1, 0x1

    goto :goto_4

    :cond_8
    const/4 p1, 0x0

    :goto_4
    if-nez p1, :cond_9

    const-string p1, "operating-rate"

    .line 2862
    invoke-virtual {v1, p1, p5}, Landroid/media/MediaFormat;->setFloat(Ljava/lang/String;F)V

    .line 2865
    :cond_9
    sget p1, Landroidx/media2/exoplayer/external/util/ac;->a:I

    const/16 p5, 0x1c

    if-gt p1, p5, :cond_a

    iget-object p1, p3, Landroidx/media2/exoplayer/external/Format;->sampleMimeType:Ljava/lang/String;

    const-string p5, "audio/ac4"

    invoke-virtual {p5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    const-string p1, "ac4-is-sync"

    .line 2868
    invoke-virtual {v1, p1, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :cond_a
    const/4 p1, 0x0

    .line 406
    invoke-virtual {p2, v1, p1, p4, v4}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 407
    iget-boolean p2, p0, Landroidx/media2/exoplayer/external/audio/u;->g:Z

    if-eqz p2, :cond_b

    .line 409
    iput-object v1, p0, Landroidx/media2/exoplayer/external/audio/u;->j:Landroid/media/MediaFormat;

    .line 410
    iget-object p1, p3, Landroidx/media2/exoplayer/external/Format;->sampleMimeType:Ljava/lang/String;

    invoke-virtual {v1, v2, p1}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 412
    :cond_b
    iput-object p1, p0, Landroidx/media2/exoplayer/external/audio/u;->j:Landroid/media/MediaFormat;

    return-void
.end method

.method public final a(Landroidx/media2/exoplayer/external/x;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ExoPlaybackException;
        }
    .end annotation

    .line 468
    invoke-super {p0, p1}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->a(Landroidx/media2/exoplayer/external/x;)V

    .line 469
    iget-object p1, p1, Landroidx/media2/exoplayer/external/x;->c:Landroidx/media2/exoplayer/external/Format;

    .line 470
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/u;->c:Landroidx/media2/exoplayer/external/audio/g$a;

    .line 4136
    iget-object v1, v0, Landroidx/media2/exoplayer/external/audio/g$a;->b:Landroidx/media2/exoplayer/external/audio/g;

    if-eqz v1, :cond_0

    .line 4137
    iget-object v1, v0, Landroidx/media2/exoplayer/external/audio/g$a;->a:Landroid/os/Handler;

    new-instance v2, Landroidx/media2/exoplayer/external/audio/j;

    invoke-direct {v2, v0, p1}, Landroidx/media2/exoplayer/external/audio/j;-><init>(Landroidx/media2/exoplayer/external/audio/g$a;Landroidx/media2/exoplayer/external/Format;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 473
    :cond_0
    iget-object v0, p1, Landroidx/media2/exoplayer/external/Format;->sampleMimeType:Ljava/lang/String;

    const-string v1, "audio/raw"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p1, Landroidx/media2/exoplayer/external/Format;->pcmEncoding:I

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    .line 474
    :goto_0
    iput v0, p0, Landroidx/media2/exoplayer/external/audio/u;->k:I

    .line 475
    iget v0, p1, Landroidx/media2/exoplayer/external/Format;->channelCount:I

    iput v0, p0, Landroidx/media2/exoplayer/external/audio/u;->l:I

    .line 476
    iget v0, p1, Landroidx/media2/exoplayer/external/Format;->encoderDelay:I

    iput v0, p0, Landroidx/media2/exoplayer/external/audio/u;->m:I

    .line 477
    iget p1, p1, Landroidx/media2/exoplayer/external/Format;->encoderPadding:I

    iput p1, p0, Landroidx/media2/exoplayer/external/audio/u;->n:I

    return-void
.end method

.method public final a(Ljava/lang/String;JJ)V
    .locals 9

    .line 463
    iget-object v1, p0, Landroidx/media2/exoplayer/external/audio/u;->c:Landroidx/media2/exoplayer/external/audio/g$a;

    .line 4124
    iget-object v0, v1, Landroidx/media2/exoplayer/external/audio/g$a;->b:Landroidx/media2/exoplayer/external/audio/g;

    if-eqz v0, :cond_0

    .line 4125
    iget-object v7, v1, Landroidx/media2/exoplayer/external/audio/g$a;->a:Landroid/os/Handler;

    new-instance v8, Landroidx/media2/exoplayer/external/audio/i;

    move-object v0, v8

    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-direct/range {v0 .. v6}, Landroidx/media2/exoplayer/external/audio/i;-><init>(Landroidx/media2/exoplayer/external/audio/g$a;Ljava/lang/String;JJ)V

    invoke-virtual {v7, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final a(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ExoPlaybackException;
        }
    .end annotation

    .line 566
    invoke-super {p0, p1}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->a(Z)V

    .line 567
    iget-object p1, p0, Landroidx/media2/exoplayer/external/audio/u;->c:Landroidx/media2/exoplayer/external/audio/g$a;

    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/u;->a:Landroidx/media2/exoplayer/external/b/d;

    .line 5114
    iget-object v1, p1, Landroidx/media2/exoplayer/external/audio/g$a;->b:Landroidx/media2/exoplayer/external/audio/g;

    if-eqz v1, :cond_0

    .line 5115
    iget-object v1, p1, Landroidx/media2/exoplayer/external/audio/g$a;->a:Landroid/os/Handler;

    new-instance v2, Landroidx/media2/exoplayer/external/audio/h;

    invoke-direct {v2, p1, v0}, Landroidx/media2/exoplayer/external/audio/h;-><init>(Landroidx/media2/exoplayer/external/audio/g$a;Landroidx/media2/exoplayer/external/b/d;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 568
    :cond_0
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/audio/u;->u()Landroidx/media2/exoplayer/external/RendererConfiguration;

    move-result-object p1

    iget p1, p1, Landroidx/media2/exoplayer/external/RendererConfiguration;->tunnelingAudioSessionId:I

    if-eqz p1, :cond_1

    .line 570
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/u;->d:Landroidx/media2/exoplayer/external/audio/AudioSink;

    invoke-interface {v0, p1}, Landroidx/media2/exoplayer/external/audio/AudioSink;->a(I)V

    return-void

    .line 572
    :cond_1
    iget-object p1, p0, Landroidx/media2/exoplayer/external/audio/u;->d:Landroidx/media2/exoplayer/external/audio/AudioSink;

    invoke-interface {p1}, Landroidx/media2/exoplayer/external/audio/AudioSink;->g()V

    return-void
.end method

.method public final a([Landroidx/media2/exoplayer/external/Format;J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ExoPlaybackException;
        }
    .end annotation

    .line 578
    invoke-super {p0, p1, p2, p3}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->a([Landroidx/media2/exoplayer/external/Format;J)V

    .line 579
    iget-wide p1, p0, Landroidx/media2/exoplayer/external/audio/u;->r:J

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p3, p1, v0

    if-eqz p3, :cond_1

    .line 580
    iget p1, p0, Landroidx/media2/exoplayer/external/audio/u;->s:I

    iget-object p2, p0, Landroidx/media2/exoplayer/external/audio/u;->e:[J

    array-length p3, p2

    if-ne p1, p3, :cond_0

    add-int/lit8 p1, p1, -0x1

    .line 581
    aget-wide p1, p2, p1

    const/16 p3, 0x43

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p3, "Too many stream changes, so dropping change at "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MediaCodecAudioRenderer"

    invoke-static {p2, p1}, Landroidx/media2/exoplayer/external/util/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    add-int/lit8 p1, p1, 0x1

    .line 586
    iput p1, p0, Landroidx/media2/exoplayer/external/audio/u;->s:I

    .line 588
    :goto_0
    iget-object p1, p0, Landroidx/media2/exoplayer/external/audio/u;->e:[J

    iget p2, p0, Landroidx/media2/exoplayer/external/audio/u;->s:I

    add-int/lit8 p2, p2, -0x1

    iget-wide v0, p0, Landroidx/media2/exoplayer/external/audio/u;->r:J

    aput-wide v0, p1, p2

    :cond_1
    return-void
.end method

.method public final a(JJLandroid/media/MediaCodec;Ljava/nio/ByteBuffer;IIJZZ)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ExoPlaybackException;
        }
    .end annotation

    .line 710
    iget-boolean p1, p0, Landroidx/media2/exoplayer/external/audio/u;->i:Z

    if-eqz p1, :cond_0

    const-wide/16 p1, 0x0

    cmp-long p3, p9, p1

    if-nez p3, :cond_0

    and-int/lit8 p1, p8, 0x4

    if-eqz p1, :cond_0

    iget-wide p1, p0, Landroidx/media2/exoplayer/external/audio/u;->r:J

    const-wide p3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p12, p1, p3

    if-eqz p12, :cond_0

    move-wide p9, p1

    .line 717
    :cond_0
    iget-boolean p1, p0, Landroidx/media2/exoplayer/external/audio/u;->g:Z

    const/4 p2, 0x0

    const/4 p3, 0x1

    if-eqz p1, :cond_1

    and-int/lit8 p1, p8, 0x2

    if-eqz p1, :cond_1

    .line 719
    invoke-virtual {p5, p7, p2}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    return p3

    :cond_1
    if-eqz p11, :cond_2

    .line 724
    invoke-virtual {p5, p7, p2}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 725
    iget-object p1, p0, Landroidx/media2/exoplayer/external/audio/u;->a:Landroidx/media2/exoplayer/external/b/d;

    iget p2, p1, Landroidx/media2/exoplayer/external/b/d;->f:I

    add-int/2addr p2, p3

    iput p2, p1, Landroidx/media2/exoplayer/external/b/d;->f:I

    .line 726
    iget-object p1, p0, Landroidx/media2/exoplayer/external/audio/u;->d:Landroidx/media2/exoplayer/external/audio/AudioSink;

    invoke-interface {p1}, Landroidx/media2/exoplayer/external/audio/AudioSink;->b()V

    return p3

    .line 731
    :cond_2
    :try_start_0
    iget-object p1, p0, Landroidx/media2/exoplayer/external/audio/u;->d:Landroidx/media2/exoplayer/external/audio/AudioSink;

    invoke-interface {p1, p6, p9, p10}, Landroidx/media2/exoplayer/external/audio/AudioSink;->a(Ljava/nio/ByteBuffer;J)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 732
    invoke-virtual {p5, p7, p2}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 733
    iget-object p1, p0, Landroidx/media2/exoplayer/external/audio/u;->a:Landroidx/media2/exoplayer/external/b/d;

    iget p2, p1, Landroidx/media2/exoplayer/external/b/d;->e:I

    add-int/2addr p2, p3

    iput p2, p1, Landroidx/media2/exoplayer/external/b/d;->e:I
    :try_end_0
    .catch Landroidx/media2/exoplayer/external/audio/AudioSink$InitializationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroidx/media2/exoplayer/external/audio/AudioSink$WriteException; {:try_start_0 .. :try_end_0} :catch_0

    return p3

    :cond_3
    return p2

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 737
    :goto_0
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/audio/u;->v()I

    move-result p2

    invoke-static {p1, p2}, Landroidx/media2/exoplayer/external/ExoPlaybackException;->a(Ljava/lang/Exception;I)Landroidx/media2/exoplayer/external/ExoPlaybackException;

    move-result-object p1

    throw p1
.end method

.method public final c()Landroidx/media2/exoplayer/external/util/l;
    .locals 0

    return-object p0
.end method

.method public final c(J)V
    .locals 4

    .line 685
    :goto_0
    iget v0, p0, Landroidx/media2/exoplayer/external/audio/u;->s:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/u;->e:[J

    const/4 v1, 0x0

    aget-wide v2, v0, v1

    cmp-long v0, p1, v2

    if-ltz v0, :cond_0

    .line 686
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/u;->d:Landroidx/media2/exoplayer/external/audio/AudioSink;

    invoke-interface {v0}, Landroidx/media2/exoplayer/external/audio/AudioSink;->b()V

    .line 687
    iget v0, p0, Landroidx/media2/exoplayer/external/audio/u;->s:I

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    iput v0, p0, Landroidx/media2/exoplayer/external/audio/u;->s:I

    .line 688
    iget-object v3, p0, Landroidx/media2/exoplayer/external/audio/u;->e:[J

    invoke-static {v3, v2, v3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final d()Landroidx/media2/exoplayer/external/ad;
    .locals 1

    .line 665
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/u;->d:Landroidx/media2/exoplayer/external/audio/AudioSink;

    invoke-interface {v0}, Landroidx/media2/exoplayer/external/audio/AudioSink;->f()Landroidx/media2/exoplayer/external/ad;

    move-result-object v0

    return-object v0
.end method

.method public final h_()J
    .locals 2

    .line 652
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/audio/u;->i_()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 653
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/audio/u;->H()V

    .line 655
    :cond_0
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/audio/u;->o:J

    return-wide v0
.end method

.method public final p()V
    .locals 1

    .line 605
    invoke-super {p0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->p()V

    .line 606
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/u;->d:Landroidx/media2/exoplayer/external/audio/AudioSink;

    invoke-interface {v0}, Landroidx/media2/exoplayer/external/audio/AudioSink;->a()V

    return-void
.end method

.method public final q()V
    .locals 1

    .line 611
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/audio/u;->H()V

    .line 612
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/u;->d:Landroidx/media2/exoplayer/external/audio/AudioSink;

    invoke-interface {v0}, Landroidx/media2/exoplayer/external/audio/AudioSink;->h()V

    .line 613
    invoke-super {p0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->q()V

    return-void
.end method

.method public final r()V
    .locals 3

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 619
    :try_start_0
    iput-wide v0, p0, Landroidx/media2/exoplayer/external/audio/u;->r:J

    const/4 v0, 0x0

    .line 620
    iput v0, p0, Landroidx/media2/exoplayer/external/audio/u;->s:I

    .line 621
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/u;->d:Landroidx/media2/exoplayer/external/audio/AudioSink;

    invoke-interface {v0}, Landroidx/media2/exoplayer/external/audio/AudioSink;->i()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 624
    :try_start_1
    invoke-super {p0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->r()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 626
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/u;->c:Landroidx/media2/exoplayer/external/audio/g$a;

    iget-object v1, p0, Landroidx/media2/exoplayer/external/audio/u;->a:Landroidx/media2/exoplayer/external/b/d;

    invoke-virtual {v0, v1}, Landroidx/media2/exoplayer/external/audio/g$a;->a(Landroidx/media2/exoplayer/external/b/d;)V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Landroidx/media2/exoplayer/external/audio/u;->c:Landroidx/media2/exoplayer/external/audio/g$a;

    iget-object v2, p0, Landroidx/media2/exoplayer/external/audio/u;->a:Landroidx/media2/exoplayer/external/b/d;

    invoke-virtual {v1, v2}, Landroidx/media2/exoplayer/external/audio/g$a;->a(Landroidx/media2/exoplayer/external/b/d;)V

    throw v0

    :catchall_1
    move-exception v0

    .line 624
    :try_start_2
    invoke-super {p0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->r()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 626
    iget-object v1, p0, Landroidx/media2/exoplayer/external/audio/u;->c:Landroidx/media2/exoplayer/external/audio/g$a;

    iget-object v2, p0, Landroidx/media2/exoplayer/external/audio/u;->a:Landroidx/media2/exoplayer/external/b/d;

    invoke-virtual {v1, v2}, Landroidx/media2/exoplayer/external/audio/g$a;->a(Landroidx/media2/exoplayer/external/b/d;)V

    throw v0

    :catchall_2
    move-exception v0

    iget-object v1, p0, Landroidx/media2/exoplayer/external/audio/u;->c:Landroidx/media2/exoplayer/external/audio/g$a;

    iget-object v2, p0, Landroidx/media2/exoplayer/external/audio/u;->a:Landroidx/media2/exoplayer/external/b/d;

    invoke-virtual {v1, v2}, Landroidx/media2/exoplayer/external/audio/g$a;->a(Landroidx/media2/exoplayer/external/b/d;)V

    throw v0
.end method

.method public final s()V
    .locals 2

    .line 634
    :try_start_0
    invoke-super {p0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->s()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 636
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/u;->d:Landroidx/media2/exoplayer/external/audio/AudioSink;

    invoke-interface {v0}, Landroidx/media2/exoplayer/external/audio/AudioSink;->j()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Landroidx/media2/exoplayer/external/audio/u;->d:Landroidx/media2/exoplayer/external/audio/AudioSink;

    invoke-interface {v1}, Landroidx/media2/exoplayer/external/audio/AudioSink;->j()V

    throw v0
.end method

.method public final x()Z
    .locals 1

    .line 647
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/u;->d:Landroidx/media2/exoplayer/external/audio/AudioSink;

    invoke-interface {v0}, Landroidx/media2/exoplayer/external/audio/AudioSink;->e()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->x()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public final y()Z
    .locals 1

    .line 642
    invoke-super {p0}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecRenderer;->y()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/u;->d:Landroidx/media2/exoplayer/external/audio/AudioSink;

    invoke-interface {v0}, Landroidx/media2/exoplayer/external/audio/AudioSink;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final z()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ExoPlaybackException;
        }
    .end annotation

    .line 745
    :try_start_0
    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/u;->d:Landroidx/media2/exoplayer/external/audio/AudioSink;

    invoke-interface {v0}, Landroidx/media2/exoplayer/external/audio/AudioSink;->c()V
    :try_end_0
    .catch Landroidx/media2/exoplayer/external/audio/AudioSink$WriteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 747
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/audio/u;->v()I

    move-result v1

    invoke-static {v0, v1}, Landroidx/media2/exoplayer/external/ExoPlaybackException;->a(Ljava/lang/Exception;I)Landroidx/media2/exoplayer/external/ExoPlaybackException;

    move-result-object v0

    throw v0
.end method

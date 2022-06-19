.class public final Lcom/google/android/exoplayer2/audio/n;
.super Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/util/p;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/audio/n$a;
    }
.end annotation


# instance fields
.field a:Z

.field private final f:Landroid/content/Context;

.field private final g:Lcom/google/android/exoplayer2/audio/f$a;

.field private final h:Lcom/google/android/exoplayer2/audio/AudioSink;

.field private i:I

.field private j:Z

.field private k:Lcom/google/android/exoplayer2/Format;

.field private l:J

.field private m:Z

.field private n:Z

.field private o:Z

.field private p:Lcom/google/android/exoplayer2/af$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/exoplayer2/mediacodec/f$a;Lcom/google/android/exoplayer2/mediacodec/h;ZLandroid/os/Handler;Lcom/google/android/exoplayer2/audio/f;Lcom/google/android/exoplayer2/audio/AudioSink;)V
    .locals 6

    const/4 v1, 0x1

    const v5, 0x472c4400    # 44100.0f

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    .line 234
    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;-><init>(ILcom/google/android/exoplayer2/mediacodec/f$a;Lcom/google/android/exoplayer2/mediacodec/h;ZF)V

    .line 240
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/n;->f:Landroid/content/Context;

    .line 241
    iput-object p7, p0, Lcom/google/android/exoplayer2/audio/n;->h:Lcom/google/android/exoplayer2/audio/AudioSink;

    .line 242
    new-instance p1, Lcom/google/android/exoplayer2/audio/f$a;

    invoke-direct {p1, p5, p6}, Lcom/google/android/exoplayer2/audio/f$a;-><init>(Landroid/os/Handler;Lcom/google/android/exoplayer2/audio/f;)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/n;->g:Lcom/google/android/exoplayer2/audio/f$a;

    .line 243
    new-instance p1, Lcom/google/android/exoplayer2/audio/n$a;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/google/android/exoplayer2/audio/n$a;-><init>(Lcom/google/android/exoplayer2/audio/n;Lcom/google/android/exoplayer2/audio/n$1;)V

    invoke-interface {p7, p1}, Lcom/google/android/exoplayer2/audio/AudioSink;->a(Lcom/google/android/exoplayer2/audio/AudioSink$a;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/exoplayer2/mediacodec/h;)V
    .locals 1

    const/4 v0, 0x0

    .line 115
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/google/android/exoplayer2/audio/n;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/mediacodec/h;Landroid/os/Handler;Lcom/google/android/exoplayer2/audio/f;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/exoplayer2/mediacodec/h;Landroid/os/Handler;Lcom/google/android/exoplayer2/audio/f;)V
    .locals 8

    const/4 v0, 0x0

    new-array v7, v0, [Lcom/google/android/exoplayer2/audio/AudioProcessor;

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 130
    invoke-direct/range {v1 .. v7}, Lcom/google/android/exoplayer2/audio/n;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/mediacodec/h;Landroid/os/Handler;Lcom/google/android/exoplayer2/audio/f;Lcom/google/android/exoplayer2/audio/e;[Lcom/google/android/exoplayer2/audio/AudioProcessor;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/exoplayer2/mediacodec/h;Landroid/os/Handler;Lcom/google/android/exoplayer2/audio/f;Lcom/google/android/exoplayer2/audio/AudioSink;)V
    .locals 8

    .line 173
    sget-object v2, Lcom/google/android/exoplayer2/mediacodec/f$a;->a:Lcom/google/android/exoplayer2/mediacodec/f$a;

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/google/android/exoplayer2/audio/n;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/mediacodec/f$a;Lcom/google/android/exoplayer2/mediacodec/h;ZLandroid/os/Handler;Lcom/google/android/exoplayer2/audio/f;Lcom/google/android/exoplayer2/audio/AudioSink;)V

    return-void
.end method

.method public varargs constructor <init>(Landroid/content/Context;Lcom/google/android/exoplayer2/mediacodec/h;Landroid/os/Handler;Lcom/google/android/exoplayer2/audio/f;Lcom/google/android/exoplayer2/audio/e;[Lcom/google/android/exoplayer2/audio/AudioProcessor;)V
    .locals 6

    .line 151
    new-instance v5, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;

    invoke-direct {v5, p5, p6}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;-><init>(Lcom/google/android/exoplayer2/audio/e;[Lcom/google/android/exoplayer2/audio/AudioProcessor;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/audio/n;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/mediacodec/h;Landroid/os/Handler;Lcom/google/android/exoplayer2/audio/f;Lcom/google/android/exoplayer2/audio/AudioSink;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/exoplayer2/mediacodec/h;ZLandroid/os/Handler;Lcom/google/android/exoplayer2/audio/f;Lcom/google/android/exoplayer2/audio/AudioSink;)V
    .locals 8

    .line 201
    sget-object v2, Lcom/google/android/exoplayer2/mediacodec/f$a;->a:Lcom/google/android/exoplayer2/mediacodec/f$a;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/google/android/exoplayer2/audio/n;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/mediacodec/f$a;Lcom/google/android/exoplayer2/mediacodec/h;ZLandroid/os/Handler;Lcom/google/android/exoplayer2/audio/f;Lcom/google/android/exoplayer2/audio/AudioSink;)V

    return-void
.end method

.method private N()V
    .locals 5

    .line 776
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/n;->h:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/audio/n;->z()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/audio/AudioSink;->a(Z)J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 779
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/audio/n;->a:Z

    if-eqz v2, :cond_0

    goto :goto_0

    .line 781
    :cond_0
    iget-wide v2, p0, Lcom/google/android/exoplayer2/audio/n;->l:J

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    :goto_0
    iput-wide v0, p0, Lcom/google/android/exoplayer2/audio/n;->l:J

    const/4 v0, 0x0

    .line 782
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/audio/n;->a:Z

    :cond_1
    return-void
.end method

.method private a(Lcom/google/android/exoplayer2/mediacodec/g;Lcom/google/android/exoplayer2/Format;)I
    .locals 1

    .line 720
    iget-object p1, p1, Lcom/google/android/exoplayer2/mediacodec/g;->a:Ljava/lang/String;

    const-string v0, "OMX.google.raw.decoder"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 725
    sget p1, Lcom/google/android/exoplayer2/util/af;->a:I

    const/16 v0, 0x18

    if-ge p1, v0, :cond_1

    sget p1, Lcom/google/android/exoplayer2/util/af;->a:I

    const/16 v0, 0x17

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/google/android/exoplayer2/audio/n;->f:Landroid/content/Context;

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/af;->c(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_1

    :cond_0
    const/4 p1, -0x1

    return p1

    .line 729
    :cond_1
    iget p1, p2, Lcom/google/android/exoplayer2/Format;->maxInputSize:I

    return p1
.end method

.method static synthetic a(Lcom/google/android/exoplayer2/audio/n;)Lcom/google/android/exoplayer2/audio/f$a;
    .locals 0

    .line 83
    iget-object p0, p0, Lcom/google/android/exoplayer2/audio/n;->g:Lcom/google/android/exoplayer2/audio/f$a;

    return-object p0
.end method

.method static synthetic b(Lcom/google/android/exoplayer2/audio/n;)Lcom/google/android/exoplayer2/af$a;
    .locals 0

    .line 83
    iget-object p0, p0, Lcom/google/android/exoplayer2/audio/n;->p:Lcom/google/android/exoplayer2/af$a;

    return-object p0
.end method


# virtual methods
.method public final A()V
    .locals 1

    .line 592
    invoke-super {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->A()V

    .line 593
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/n;->h:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/audio/AudioSink;->b()V

    return-void
.end method

.method public final B()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 651
    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/n;->h:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/audio/AudioSink;->c()V
    :try_end_0
    .catch Lcom/google/android/exoplayer2/audio/AudioSink$WriteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 653
    iget-object v1, v0, Lcom/google/android/exoplayer2/audio/AudioSink$WriteException;->c:Lcom/google/android/exoplayer2/Format;

    iget-boolean v2, v0, Lcom/google/android/exoplayer2/audio/AudioSink$WriteException;->b:Z

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/exoplayer2/audio/n;->a(Ljava/lang/Throwable;Lcom/google/android/exoplayer2/Format;Z)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object v0

    throw v0
.end method

.method public final B_()J
    .locals 2

    .line 561
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/audio/n;->C_()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 562
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/n;->N()V

    .line 564
    :cond_0
    iget-wide v0, p0, Lcom/google/android/exoplayer2/audio/n;->l:J

    return-wide v0
.end method

.method public final a(F[Lcom/google/android/exoplayer2/Format;)F
    .locals 5

    .line 397
    array-length v0, p2

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v4, p2, v2

    .line 398
    iget v4, v4, Lcom/google/android/exoplayer2/Format;->sampleRate:I

    if-eq v4, v1, :cond_0

    .line 400
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

.method public final a(Lcom/google/android/exoplayer2/mediacodec/h;Lcom/google/android/exoplayer2/Format;)I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$DecoderQueryException;
        }
    .end annotation

    .line 268
    iget-object v0, p2, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/q;->a(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 272
    :cond_0
    sget v0, Lcom/google/android/exoplayer2/util/af;->a:I

    const/16 v2, 0x15

    if-lt v0, v2, :cond_1

    const/16 v0, 0x20

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 273
    :goto_0
    iget-object v2, p2, Lcom/google/android/exoplayer2/Format;->exoMediaCryptoType:Ljava/lang/Class;

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    .line 274
    :goto_1
    invoke-static {p2}, Lcom/google/android/exoplayer2/audio/n;->c(Lcom/google/android/exoplayer2/Format;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 277
    iget-object v5, p0, Lcom/google/android/exoplayer2/audio/n;->h:Lcom/google/android/exoplayer2/audio/AudioSink;

    .line 278
    invoke-interface {v5, p2}, Lcom/google/android/exoplayer2/audio/AudioSink;->a(Lcom/google/android/exoplayer2/Format;)Z

    move-result v5

    if-eqz v5, :cond_4

    if-eqz v2, :cond_3

    .line 279
    invoke-static {}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->a()Lcom/google/android/exoplayer2/mediacodec/g;

    move-result-object v2

    if-eqz v2, :cond_4

    :cond_3
    or-int/lit8 p1, v0, 0xc

    return p1

    .line 284
    :cond_4
    iget-object v2, p2, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    const-string v5, "audio/raw"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/n;->h:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {v2, p2}, Lcom/google/android/exoplayer2/audio/AudioSink;->a(Lcom/google/android/exoplayer2/Format;)Z

    move-result v2

    if-nez v2, :cond_5

    return v3

    .line 288
    :cond_5
    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/n;->h:Lcom/google/android/exoplayer2/audio/AudioSink;

    iget v5, p2, Lcom/google/android/exoplayer2/Format;->channelCount:I

    iget v6, p2, Lcom/google/android/exoplayer2/Format;->sampleRate:I

    const/4 v7, 0x2

    .line 289
    invoke-static {v7, v5, v6}, Lcom/google/android/exoplayer2/util/af;->b(III)Lcom/google/android/exoplayer2/Format;

    move-result-object v5

    .line 288
    invoke-interface {v2, v5}, Lcom/google/android/exoplayer2/audio/AudioSink;->a(Lcom/google/android/exoplayer2/Format;)Z

    move-result v2

    if-nez v2, :cond_6

    return v3

    .line 293
    :cond_6
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/android/exoplayer2/audio/n;->a(Lcom/google/android/exoplayer2/mediacodec/h;Lcom/google/android/exoplayer2/Format;Z)Ljava/util/List;

    move-result-object p1

    .line 294
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_7

    return v3

    :cond_7
    if-nez v4, :cond_8

    return v7

    .line 301
    :cond_8
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/mediacodec/g;

    .line 302
    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/mediacodec/g;->a(Lcom/google/android/exoplayer2/Format;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 305
    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/mediacodec/g;->b(Lcom/google/android/exoplayer2/Format;)Z

    move-result p1

    if-eqz p1, :cond_9

    const/16 p1, 0x10

    goto :goto_2

    :cond_9
    const/16 p1, 0x8

    :goto_2
    if-eqz v1, :cond_a

    const/4 p2, 0x4

    goto :goto_3

    :cond_a
    const/4 p2, 0x3

    :goto_3
    or-int/2addr p1, p2

    or-int/2addr p1, v0

    return p1
.end method

.method public final a(Lcom/google/android/exoplayer2/mediacodec/g;Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/decoder/e;
    .locals 8

    .line 370
    invoke-virtual {p1, p2, p3}, Lcom/google/android/exoplayer2/mediacodec/g;->a(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/decoder/e;

    move-result-object v0

    .line 372
    iget v1, v0, Lcom/google/android/exoplayer2/decoder/e;->e:I

    .line 373
    invoke-direct {p0, p1, p3}, Lcom/google/android/exoplayer2/audio/n;->a(Lcom/google/android/exoplayer2/mediacodec/g;Lcom/google/android/exoplayer2/Format;)I

    move-result v2

    iget v3, p0, Lcom/google/android/exoplayer2/audio/n;->i:I

    if-le v2, v3, :cond_0

    or-int/lit8 v1, v1, 0x40

    :cond_0
    move v7, v1

    .line 377
    new-instance v1, Lcom/google/android/exoplayer2/decoder/e;

    iget-object v3, p1, Lcom/google/android/exoplayer2/mediacodec/g;->a:Ljava/lang/String;

    if-eqz v7, :cond_1

    const/4 p1, 0x0

    const/4 v6, 0x0

    goto :goto_0

    .line 381
    :cond_1
    iget p1, v0, Lcom/google/android/exoplayer2/decoder/e;->d:I

    move v6, p1

    :goto_0
    move-object v2, v1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v2 .. v7}, Lcom/google/android/exoplayer2/decoder/e;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/Format;II)V

    return-object v1
.end method

.method public final a(Lcom/google/android/exoplayer2/q;)Lcom/google/android/exoplayer2/decoder/e;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 421
    invoke-super {p0, p1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->a(Lcom/google/android/exoplayer2/q;)Lcom/google/android/exoplayer2/decoder/e;

    move-result-object v0

    .line 422
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/n;->g:Lcom/google/android/exoplayer2/audio/f$a;

    iget-object p1, p1, Lcom/google/android/exoplayer2/q;->b:Lcom/google/android/exoplayer2/Format;

    invoke-virtual {v1, p1, v0}, Lcom/google/android/exoplayer2/audio/f$a;->a(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/decoder/e;)V

    return-object v0
.end method

.method public final a(Lcom/google/android/exoplayer2/mediacodec/h;Lcom/google/android/exoplayer2/Format;Z)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/mediacodec/h;",
            "Lcom/google/android/exoplayer2/Format;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/mediacodec/g;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$DecoderQueryException;
        }
    .end annotation

    .line 317
    iget-object v0, p2, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 319
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 321
    :cond_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/n;->h:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {v1, p2}, Lcom/google/android/exoplayer2/audio/AudioSink;->a(Lcom/google/android/exoplayer2/Format;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 323
    invoke-static {}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->a()Lcom/google/android/exoplayer2/mediacodec/g;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 325
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 v1, 0x0

    .line 329
    invoke-interface {p1, v0, p3, v1}, Lcom/google/android/exoplayer2/mediacodec/h;->getDecoderInfos(Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v2

    .line 331
    invoke-static {v2, p2}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->a(Ljava/util/List;Lcom/google/android/exoplayer2/Format;)Ljava/util/List;

    move-result-object p2

    const-string v2, "audio/eac3-joc"

    .line 332
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 334
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string p2, "audio/eac3"

    .line 336
    invoke-interface {p1, p2, p3, v1}, Lcom/google/android/exoplayer2/mediacodec/h;->getDecoderInfos(Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object p1

    .line 335
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-object p2, v0

    .line 340
    :cond_2
    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final a(ILjava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    .line 681
    invoke-super {p0, p1, p2}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->a(ILjava/lang/Object;)V

    return-void

    .line 678
    :pswitch_0
    check-cast p2, Lcom/google/android/exoplayer2/af$a;

    iput-object p2, p0, Lcom/google/android/exoplayer2/audio/n;->p:Lcom/google/android/exoplayer2/af$a;

    return-void

    .line 675
    :pswitch_1
    iget-object p1, p0, Lcom/google/android/exoplayer2/audio/n;->h:Lcom/google/android/exoplayer2/audio/AudioSink;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-interface {p1, p2}, Lcom/google/android/exoplayer2/audio/AudioSink;->a(I)V

    return-void

    .line 672
    :pswitch_2
    iget-object p1, p0, Lcom/google/android/exoplayer2/audio/n;->h:Lcom/google/android/exoplayer2/audio/AudioSink;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-interface {p1, p2}, Lcom/google/android/exoplayer2/audio/AudioSink;->b(Z)V

    return-void

    .line 668
    :cond_0
    check-cast p2, Lcom/google/android/exoplayer2/audio/i;

    .line 669
    iget-object p1, p0, Lcom/google/android/exoplayer2/audio/n;->h:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {p1, p2}, Lcom/google/android/exoplayer2/audio/AudioSink;->a(Lcom/google/android/exoplayer2/audio/i;)V

    return-void

    .line 664
    :cond_1
    check-cast p2, Lcom/google/android/exoplayer2/audio/d;

    .line 665
    iget-object p1, p0, Lcom/google/android/exoplayer2/audio/n;->h:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {p1, p2}, Lcom/google/android/exoplayer2/audio/AudioSink;->a(Lcom/google/android/exoplayer2/audio/d;)V

    return-void

    .line 661
    :cond_2
    iget-object p1, p0, Lcom/google/android/exoplayer2/audio/n;->h:Lcom/google/android/exoplayer2/audio/AudioSink;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-interface {p1, p2}, Lcom/google/android/exoplayer2/audio/AudioSink;->a(F)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final a(JZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 498
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->a(JZ)V

    .line 499
    iget-boolean p3, p0, Lcom/google/android/exoplayer2/audio/n;->o:Z

    if-eqz p3, :cond_0

    .line 500
    iget-object p3, p0, Lcom/google/android/exoplayer2/audio/n;->h:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {p3}, Lcom/google/android/exoplayer2/audio/AudioSink;->k()V

    goto :goto_0

    .line 502
    :cond_0
    iget-object p3, p0, Lcom/google/android/exoplayer2/audio/n;->h:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {p3}, Lcom/google/android/exoplayer2/audio/AudioSink;->j()V

    .line 505
    :goto_0
    iput-wide p1, p0, Lcom/google/android/exoplayer2/audio/n;->l:J

    const/4 p1, 0x1

    .line 506
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/audio/n;->m:Z

    .line 507
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/audio/n;->a:Z

    return-void
.end method

.method public final a(Lcom/google/android/exoplayer2/Format;Landroid/media/MediaFormat;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 431
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/n;->k:Lcom/google/android/exoplayer2/Format;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object p1, v0

    goto/16 :goto_2

    .line 433
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/audio/n;->E()Lcom/google/android/exoplayer2/mediacodec/f;

    move-result-object v0

    if-nez v0, :cond_1

    goto/16 :goto_2

    .line 437
    :cond_1
    iget-object v0, p1, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    const-string v2, "audio/raw"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 439
    iget v0, p1, Lcom/google/android/exoplayer2/Format;->pcmEncoding:I

    goto :goto_0

    .line 440
    :cond_2
    sget v0, Lcom/google/android/exoplayer2/util/af;->a:I

    const/16 v3, 0x18

    if-lt v0, v3, :cond_3

    const-string v0, "pcm-encoding"

    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 441
    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_3
    const-string v0, "v-bits-per-sample"

    .line 442
    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 443
    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/af;->b(I)I

    move-result v0

    goto :goto_0

    .line 448
    :cond_4
    iget-object v0, p1, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 449
    iget v0, p1, Lcom/google/android/exoplayer2/Format;->pcmEncoding:I

    goto :goto_0

    :cond_5
    const/4 v0, 0x2

    .line 452
    :goto_0
    new-instance v3, Lcom/google/android/exoplayer2/Format$a;

    invoke-direct {v3}, Lcom/google/android/exoplayer2/Format$a;-><init>()V

    .line 9370
    iput-object v2, v3, Lcom/google/android/exoplayer2/Format$a;->k:Ljava/lang/String;

    .line 9539
    iput v0, v3, Lcom/google/android/exoplayer2/Format$a;->z:I

    .line 455
    iget v0, p1, Lcom/google/android/exoplayer2/Format;->encoderDelay:I

    .line 9550
    iput v0, v3, Lcom/google/android/exoplayer2/Format$a;->A:I

    .line 456
    iget v0, p1, Lcom/google/android/exoplayer2/Format;->encoderPadding:I

    .line 9561
    iput v0, v3, Lcom/google/android/exoplayer2/Format$a;->B:I

    const-string v0, "channel-count"

    .line 458
    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    .line 10517
    iput v0, v3, Lcom/google/android/exoplayer2/Format$a;->x:I

    const-string v0, "sample-rate"

    .line 459
    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p2

    .line 10528
    iput p2, v3, Lcom/google/android/exoplayer2/Format$a;->y:I

    .line 460
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/Format$a;->a()Lcom/google/android/exoplayer2/Format;

    move-result-object p2

    .line 461
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/audio/n;->j:Z

    if-eqz v0, :cond_6

    iget v0, p2, Lcom/google/android/exoplayer2/Format;->channelCount:I

    const/4 v2, 0x6

    if-ne v0, v2, :cond_6

    iget v0, p1, Lcom/google/android/exoplayer2/Format;->channelCount:I

    if-ge v0, v2, :cond_6

    .line 464
    iget v0, p1, Lcom/google/android/exoplayer2/Format;->channelCount:I

    new-array v1, v0, [I

    const/4 v0, 0x0

    .line 465
    :goto_1
    iget v2, p1, Lcom/google/android/exoplayer2/Format;->channelCount:I

    if-ge v0, v2, :cond_6

    .line 466
    aput v0, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_6
    move-object p1, p2

    .line 471
    :goto_2
    :try_start_0
    iget-object p2, p0, Lcom/google/android/exoplayer2/audio/n;->h:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {p2, p1, v1}, Lcom/google/android/exoplayer2/audio/AudioSink;->a(Lcom/google/android/exoplayer2/Format;[I)V
    :try_end_0
    .catch Lcom/google/android/exoplayer2/audio/AudioSink$ConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 473
    iget-object p2, p1, Lcom/google/android/exoplayer2/audio/AudioSink$ConfigurationException;->format:Lcom/google/android/exoplayer2/Format;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/audio/n;->a(Ljava/lang/Throwable;Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object p1

    throw p1
.end method

.method public final a(Lcom/google/android/exoplayer2/aa;)V
    .locals 1

    .line 569
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/n;->h:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/audio/AudioSink;->a(Lcom/google/android/exoplayer2/aa;)V

    return-void
.end method

.method public final a(Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;)V
    .locals 5

    .line 579
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/audio/n;->m:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->E_()Z

    move-result v0

    if-nez v0, :cond_1

    .line 583
    iget-wide v0, p1, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->e:J

    iget-wide v2, p0, Lcom/google/android/exoplayer2/audio/n;->l:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/32 v2, 0x7a120

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 584
    iget-wide v0, p1, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->e:J

    iput-wide v0, p0, Lcom/google/android/exoplayer2/audio/n;->l:J

    :cond_0
    const/4 p1, 0x0

    .line 586
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/audio/n;->m:Z

    :cond_1
    return-void
.end method

.method public final a(Lcom/google/android/exoplayer2/mediacodec/g;Lcom/google/android/exoplayer2/mediacodec/f;Lcom/google/android/exoplayer2/Format;Landroid/media/MediaCrypto;F)V
    .locals 8

    .line 355
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/audio/n;->u()[Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    .line 7697
    invoke-direct {p0, p1, p3}, Lcom/google/android/exoplayer2/audio/n;->a(Lcom/google/android/exoplayer2/mediacodec/g;Lcom/google/android/exoplayer2/Format;)I

    move-result v1

    .line 7698
    array-length v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v2, v4, :cond_1

    .line 7703
    array-length v2, v0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v2, :cond_1

    aget-object v6, v0, v5

    .line 7704
    invoke-virtual {p1, p3, v6}, Lcom/google/android/exoplayer2/mediacodec/g;->a(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/decoder/e;

    move-result-object v7

    iget v7, v7, Lcom/google/android/exoplayer2/decoder/e;->d:I

    if-eqz v7, :cond_0

    .line 7705
    invoke-direct {p0, p1, v6}, Lcom/google/android/exoplayer2/audio/n;->a(Lcom/google/android/exoplayer2/mediacodec/g;Lcom/google/android/exoplayer2/Format;)I

    move-result v6

    invoke-static {v1, v6}, Ljava/lang/Math;->max(II)I

    move-result v1

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 355
    :cond_1
    iput v1, p0, Lcom/google/android/exoplayer2/audio/n;->i:I

    .line 356
    iget-object v0, p1, Lcom/google/android/exoplayer2/mediacodec/g;->a:Ljava/lang/String;

    .line 7805
    sget v1, Lcom/google/android/exoplayer2/util/af;->a:I

    const/16 v2, 0x18

    if-ge v1, v2, :cond_3

    const-string v1, "OMX.SEC.aac.dec"

    .line 7806
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/google/android/exoplayer2/util/af;->c:Ljava/lang/String;

    const-string v1, "samsung"

    .line 7807
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/google/android/exoplayer2/util/af;->b:Ljava/lang/String;

    const-string v1, "zeroflte"

    .line 7808
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/google/android/exoplayer2/util/af;->b:Ljava/lang/String;

    const-string v1, "herolte"

    .line 7809
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/google/android/exoplayer2/util/af;->b:Ljava/lang/String;

    const-string v1, "heroqlte"

    .line 7810
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    .line 356
    :goto_1
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/audio/n;->j:Z

    .line 357
    iget-object v0, p1, Lcom/google/android/exoplayer2/mediacodec/g;->c:Ljava/lang/String;

    iget v1, p0, Lcom/google/android/exoplayer2/audio/n;->i:I

    .line 8746
    new-instance v5, Landroid/media/MediaFormat;

    invoke-direct {v5}, Landroid/media/MediaFormat;-><init>()V

    const-string v6, "mime"

    .line 8748
    invoke-virtual {v5, v6, v0}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 8749
    iget v0, p3, Lcom/google/android/exoplayer2/Format;->channelCount:I

    const-string v6, "channel-count"

    invoke-virtual {v5, v6, v0}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 8750
    iget v0, p3, Lcom/google/android/exoplayer2/Format;->sampleRate:I

    const-string v6, "sample-rate"

    invoke-virtual {v5, v6, v0}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 8751
    iget-object v0, p3, Lcom/google/android/exoplayer2/Format;->initializationData:Ljava/util/List;

    invoke-static {v5, v0}, Lcom/google/android/exoplayer2/mediacodec/i;->a(Landroid/media/MediaFormat;Ljava/util/List;)V

    const-string v0, "max-input-size"

    .line 8753
    invoke-static {v5, v0, v1}, Lcom/google/android/exoplayer2/mediacodec/i;->a(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 8755
    sget v0, Lcom/google/android/exoplayer2/util/af;->a:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_6

    const-string v0, "priority"

    .line 8756
    invoke-virtual {v5, v0, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const/high16 v0, -0x40800000    # -1.0f

    cmpl-float v0, p5, v0

    if-eqz v0, :cond_6

    .line 8793
    sget v0, Lcom/google/android/exoplayer2/util/af;->a:I

    if-ne v0, v1, :cond_5

    sget-object v0, Lcom/google/android/exoplayer2/util/af;->d:Ljava/lang/String;

    const-string v1, "ZTE B2017G"

    .line 8794
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Lcom/google/android/exoplayer2/util/af;->d:Ljava/lang/String;

    const-string v1, "AXON 7 mini"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    const/4 v0, 0x1

    goto :goto_2

    :cond_5
    const/4 v0, 0x0

    :goto_2
    if-nez v0, :cond_6

    const-string v0, "operating-rate"

    .line 8758
    invoke-virtual {v5, v0, p5}, Landroid/media/MediaFormat;->setFloat(Ljava/lang/String;F)V

    .line 8761
    :cond_6
    sget p5, Lcom/google/android/exoplayer2/util/af;->a:I

    const/16 v0, 0x1c

    if-gt p5, v0, :cond_7

    iget-object p5, p3, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    const-string v0, "audio/ac4"

    invoke-virtual {v0, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p5

    if-eqz p5, :cond_7

    const-string p5, "ac4-is-sync"

    .line 8764
    invoke-virtual {v5, p5, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 8766
    :cond_7
    sget p5, Lcom/google/android/exoplayer2/util/af;->a:I

    if-lt p5, v2, :cond_8

    iget-object p5, p0, Lcom/google/android/exoplayer2/audio/n;->h:Lcom/google/android/exoplayer2/audio/AudioSink;

    iget v0, p3, Lcom/google/android/exoplayer2/Format;->channelCount:I

    iget v1, p3, Lcom/google/android/exoplayer2/Format;->sampleRate:I

    const/4 v2, 0x4

    .line 8768
    invoke-static {v2, v0, v1}, Lcom/google/android/exoplayer2/util/af;->b(III)Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    .line 8767
    invoke-interface {p5, v0}, Lcom/google/android/exoplayer2/audio/AudioSink;->b(Lcom/google/android/exoplayer2/Format;)I

    move-result p5

    const/4 v0, 0x2

    if-ne p5, v0, :cond_8

    const-string p5, "pcm-encoding"

    .line 8770
    invoke-virtual {v5, p5, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :cond_8
    const/4 p5, 0x0

    .line 359
    invoke-interface {p2, v5, p5, p4}, Lcom/google/android/exoplayer2/mediacodec/f;->a(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;)V

    .line 361
    iget-object p1, p1, Lcom/google/android/exoplayer2/mediacodec/g;->b:Ljava/lang/String;

    const-string p2, "audio/raw"

    .line 362
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    iget-object p1, p3, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    .line 363
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    const/4 v3, 0x1

    :cond_9
    if-eqz v3, :cond_a

    goto :goto_3

    :cond_a
    move-object p3, p5

    .line 364
    :goto_3
    iput-object p3, p0, Lcom/google/android/exoplayer2/audio/n;->k:Lcom/google/android/exoplayer2/Format;

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    .line 414
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/n;->g:Lcom/google/android/exoplayer2/audio/f$a;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/audio/f$a;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final a(Ljava/lang/String;JJ)V
    .locals 6

    .line 409
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/n;->g:Lcom/google/android/exoplayer2/audio/f$a;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/exoplayer2/audio/f$a;->a(Ljava/lang/String;JJ)V

    return-void
.end method

.method public final a(ZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 487
    invoke-super {p0, p1, p2}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->a(ZZ)V

    .line 488
    iget-object p1, p0, Lcom/google/android/exoplayer2/audio/n;->g:Lcom/google/android/exoplayer2/audio/f$a;

    iget-object p2, p0, Lcom/google/android/exoplayer2/audio/n;->e:Lcom/google/android/exoplayer2/decoder/d;

    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/audio/f$a;->a(Lcom/google/android/exoplayer2/decoder/d;)V

    .line 489
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/audio/n;->v()Lcom/google/android/exoplayer2/RendererConfiguration;

    move-result-object p1

    iget-boolean p1, p1, Lcom/google/android/exoplayer2/RendererConfiguration;->tunneling:Z

    if-eqz p1, :cond_0

    .line 490
    iget-object p1, p0, Lcom/google/android/exoplayer2/audio/n;->h:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {p1}, Lcom/google/android/exoplayer2/audio/AudioSink;->g()V

    return-void

    .line 492
    :cond_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/audio/n;->h:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {p1}, Lcom/google/android/exoplayer2/audio/AudioSink;->h()V

    return-void
.end method

.method public final a(JJLcom/google/android/exoplayer2/mediacodec/f;Ljava/nio/ByteBuffer;IIIJZZLcom/google/android/exoplayer2/Format;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 610
    invoke-static {p6}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 612
    iget-object p1, p0, Lcom/google/android/exoplayer2/audio/n;->k:Lcom/google/android/exoplayer2/Format;

    const/4 p2, 0x1

    const/4 p3, 0x0

    if-eqz p1, :cond_0

    and-int/lit8 p1, p8, 0x2

    if-eqz p1, :cond_0

    .line 615
    invoke-static {p5}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/mediacodec/f;

    invoke-interface {p1, p7, p3}, Lcom/google/android/exoplayer2/mediacodec/f;->a(IZ)V

    return p2

    :cond_0
    if-eqz p12, :cond_2

    if-eqz p5, :cond_1

    .line 621
    invoke-interface {p5, p7, p3}, Lcom/google/android/exoplayer2/mediacodec/f;->a(IZ)V

    .line 623
    :cond_1
    iget-object p1, p0, Lcom/google/android/exoplayer2/audio/n;->e:Lcom/google/android/exoplayer2/decoder/d;

    iget p3, p1, Lcom/google/android/exoplayer2/decoder/d;->f:I

    add-int/2addr p3, p9

    iput p3, p1, Lcom/google/android/exoplayer2/decoder/d;->f:I

    .line 624
    iget-object p1, p0, Lcom/google/android/exoplayer2/audio/n;->h:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {p1}, Lcom/google/android/exoplayer2/audio/AudioSink;->b()V

    return p2

    .line 630
    :cond_2
    :try_start_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/audio/n;->h:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {p1, p6, p10, p11, p9}, Lcom/google/android/exoplayer2/audio/AudioSink;->a(Ljava/nio/ByteBuffer;JI)Z

    move-result p1
    :try_end_0
    .catch Lcom/google/android/exoplayer2/audio/AudioSink$InitializationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/android/exoplayer2/audio/AudioSink$WriteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_4

    if-eqz p5, :cond_3

    .line 639
    invoke-interface {p5, p7, p3}, Lcom/google/android/exoplayer2/mediacodec/f;->a(IZ)V

    .line 641
    :cond_3
    iget-object p1, p0, Lcom/google/android/exoplayer2/audio/n;->e:Lcom/google/android/exoplayer2/decoder/d;

    iget p3, p1, Lcom/google/android/exoplayer2/decoder/d;->e:I

    add-int/2addr p3, p9

    iput p3, p1, Lcom/google/android/exoplayer2/decoder/d;->e:I

    return p2

    :cond_4
    return p3

    :catch_0
    move-exception p1

    .line 634
    iget-boolean p2, p1, Lcom/google/android/exoplayer2/audio/AudioSink$WriteException;->b:Z

    invoke-virtual {p0, p1, p14, p2}, Lcom/google/android/exoplayer2/audio/n;->a(Ljava/lang/Throwable;Lcom/google/android/exoplayer2/Format;Z)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 632
    iget-object p2, p1, Lcom/google/android/exoplayer2/audio/AudioSink$InitializationException;->c:Lcom/google/android/exoplayer2/Format;

    iget-boolean p3, p1, Lcom/google/android/exoplayer2/audio/AudioSink$InitializationException;->b:Z

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/audio/n;->a(Ljava/lang/Throwable;Lcom/google/android/exoplayer2/Format;Z)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object p1

    throw p1
.end method

.method public final b(Lcom/google/android/exoplayer2/Format;)Z
    .locals 1

    .line 345
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/n;->h:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/audio/AudioSink;->a(Lcom/google/android/exoplayer2/Format;)Z

    move-result p1

    return p1
.end method

.method public final c()Lcom/google/android/exoplayer2/util/p;
    .locals 0

    return-object p0
.end method

.method public final d()Lcom/google/android/exoplayer2/aa;
    .locals 1

    .line 574
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/n;->h:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/audio/AudioSink;->f()Lcom/google/android/exoplayer2/aa;

    move-result-object v0

    return-object v0
.end method

.method public final p()V
    .locals 1

    .line 512
    invoke-super {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->p()V

    .line 513
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/n;->h:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/audio/AudioSink;->a()V

    return-void
.end method

.method public final q()V
    .locals 1

    .line 518
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/n;->N()V

    .line 519
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/n;->h:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/audio/AudioSink;->i()V

    .line 520
    invoke-super {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->q()V

    return-void
.end method

.method public final r()V
    .locals 3

    const/4 v0, 0x1

    .line 525
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/audio/n;->n:Z

    .line 527
    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/n;->h:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/audio/AudioSink;->j()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 530
    :try_start_1
    invoke-super {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->r()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 532
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/n;->g:Lcom/google/android/exoplayer2/audio/f$a;

    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/n;->e:Lcom/google/android/exoplayer2/decoder/d;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/audio/f$a;->b(Lcom/google/android/exoplayer2/decoder/d;)V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/n;->g:Lcom/google/android/exoplayer2/audio/f$a;

    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/n;->e:Lcom/google/android/exoplayer2/decoder/d;

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/audio/f$a;->b(Lcom/google/android/exoplayer2/decoder/d;)V

    .line 533
    throw v0

    :catchall_1
    move-exception v0

    .line 530
    :try_start_2
    invoke-super {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->r()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 532
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/n;->g:Lcom/google/android/exoplayer2/audio/f$a;

    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/n;->e:Lcom/google/android/exoplayer2/decoder/d;

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/audio/f$a;->b(Lcom/google/android/exoplayer2/decoder/d;)V

    .line 534
    throw v0

    :catchall_2
    move-exception v0

    .line 532
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/n;->g:Lcom/google/android/exoplayer2/audio/f$a;

    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/n;->e:Lcom/google/android/exoplayer2/decoder/d;

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/audio/f$a;->b(Lcom/google/android/exoplayer2/decoder/d;)V

    .line 533
    throw v0
.end method

.method public final s()V
    .locals 3

    const/4 v0, 0x0

    .line 540
    :try_start_0
    invoke-super {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->s()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 542
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/audio/n;->n:Z

    if-eqz v1, :cond_0

    .line 543
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/audio/n;->n:Z

    .line 544
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/n;->h:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/audio/AudioSink;->l()V

    :cond_0
    return-void

    :catchall_0
    move-exception v1

    .line 542
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/audio/n;->n:Z

    if-eqz v2, :cond_1

    .line 543
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/audio/n;->n:Z

    .line 544
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/n;->h:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/audio/AudioSink;->l()V

    .line 546
    :cond_1
    throw v1
.end method

.method public final x()Ljava/lang/String;
    .locals 1

    const-string v0, "MediaCodecAudioRenderer"

    return-object v0
.end method

.method public final y()Z
    .locals 1

    .line 556
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/n;->h:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/audio/AudioSink;->e()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->y()Z

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

.method public final z()Z
    .locals 1

    .line 551
    invoke-super {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->z()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/n;->h:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/audio/AudioSink;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

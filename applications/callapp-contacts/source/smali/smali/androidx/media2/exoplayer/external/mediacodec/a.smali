.class public final Landroidx/media2/exoplayer/external/mediacodec/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Landroid/media/MediaCodecInfo$CodecCapabilities;

.field public final e:Z

.field public final f:Z

.field public final g:Z

.field public final h:Z

.field public final i:Z

.field public final j:Z

.field public final k:Z

.field private final l:Z


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;ZZZZZZ)V
    .locals 0

    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 203
    invoke-static {p1}, Landroidx/media2/exoplayer/external/util/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Landroidx/media2/exoplayer/external/mediacodec/a;->a:Ljava/lang/String;

    .line 204
    iput-object p2, p0, Landroidx/media2/exoplayer/external/mediacodec/a;->b:Ljava/lang/String;

    .line 205
    iput-object p3, p0, Landroidx/media2/exoplayer/external/mediacodec/a;->c:Ljava/lang/String;

    .line 206
    iput-object p4, p0, Landroidx/media2/exoplayer/external/mediacodec/a;->d:Landroid/media/MediaCodecInfo$CodecCapabilities;

    .line 207
    iput-boolean p5, p0, Landroidx/media2/exoplayer/external/mediacodec/a;->h:Z

    .line 208
    iput-boolean p6, p0, Landroidx/media2/exoplayer/external/mediacodec/a;->i:Z

    .line 209
    iput-boolean p7, p0, Landroidx/media2/exoplayer/external/mediacodec/a;->j:Z

    .line 210
    iput-boolean p8, p0, Landroidx/media2/exoplayer/external/mediacodec/a;->k:Z

    const/4 p1, 0x1

    const/4 p3, 0x0

    if-nez p9, :cond_1

    if-eqz p4, :cond_1

    .line 1557
    sget p5, Landroidx/media2/exoplayer/external/util/ac;->a:I

    const/16 p6, 0x13

    if-lt p5, p6, :cond_0

    const-string p5, "adaptive-playback"

    .line 1562
    invoke-virtual {p4, p5}, Landroid/media/MediaCodecInfo$CodecCapabilities;->isFeatureSupported(Ljava/lang/String;)Z

    move-result p5

    if-eqz p5, :cond_0

    const/4 p5, 0x1

    goto :goto_0

    :cond_0
    const/4 p5, 0x0

    :goto_0
    if-eqz p5, :cond_1

    const/4 p5, 0x1

    goto :goto_1

    :cond_1
    const/4 p5, 0x0

    .line 211
    :goto_1
    iput-boolean p5, p0, Landroidx/media2/exoplayer/external/mediacodec/a;->e:Z

    const/16 p5, 0x15

    if-eqz p4, :cond_3

    .line 1566
    sget p6, Landroidx/media2/exoplayer/external/util/ac;->a:I

    if-lt p6, p5, :cond_2

    const-string p6, "tunneled-playback"

    .line 1571
    invoke-virtual {p4, p6}, Landroid/media/MediaCodecInfo$CodecCapabilities;->isFeatureSupported(Ljava/lang/String;)Z

    move-result p6

    if-eqz p6, :cond_2

    const/4 p6, 0x1

    goto :goto_2

    :cond_2
    const/4 p6, 0x0

    :goto_2
    if-eqz p6, :cond_3

    const/4 p6, 0x1

    goto :goto_3

    :cond_3
    const/4 p6, 0x0

    .line 212
    :goto_3
    iput-boolean p6, p0, Landroidx/media2/exoplayer/external/mediacodec/a;->f:Z

    if-nez p10, :cond_6

    if-eqz p4, :cond_5

    .line 1575
    sget p6, Landroidx/media2/exoplayer/external/util/ac;->a:I

    if-lt p6, p5, :cond_4

    const-string p5, "secure-playback"

    .line 1580
    invoke-virtual {p4, p5}, Landroid/media/MediaCodecInfo$CodecCapabilities;->isFeatureSupported(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_4

    const/4 p4, 0x1

    goto :goto_4

    :cond_4
    const/4 p4, 0x0

    :goto_4
    if-eqz p4, :cond_5

    goto :goto_5

    :cond_5
    const/4 p1, 0x0

    .line 213
    :cond_6
    :goto_5
    iput-boolean p1, p0, Landroidx/media2/exoplayer/external/mediacodec/a;->g:Z

    .line 214
    invoke-static {p2}, Landroidx/media2/exoplayer/external/util/m;->b(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Landroidx/media2/exoplayer/external/mediacodec/a;->l:Z

    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 2

    const/4 v0, 0x1

    if-gt p2, v0, :cond_4

    .line 523
    sget v0, Landroidx/media2/exoplayer/external/util/ac;->a:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    if-lez p2, :cond_0

    goto/16 :goto_1

    :cond_0
    const-string v0, "audio/mpeg"

    .line 527
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "audio/3gpp"

    .line 528
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "audio/amr-wb"

    .line 529
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "audio/mp4a-latm"

    .line 530
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "audio/vorbis"

    .line 531
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "audio/opus"

    .line 532
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "audio/raw"

    .line 533
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "audio/flac"

    .line 534
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "audio/g711-alaw"

    .line 535
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "audio/g711-mlaw"

    .line 536
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "audio/gsm"

    .line 537
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const-string v0, "audio/ac3"

    .line 543
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p1, 0x6

    goto :goto_0

    :cond_2
    const-string v0, "audio/eac3"

    .line 545
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/16 p1, 0x10

    goto :goto_0

    :cond_3
    const/16 p1, 0x1e

    .line 551
    :goto_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x3b

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "AssumedMaxChannelAdjustment: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", ["

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " to "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "MediaCodecInfo"

    invoke-static {p2, p0}, Landroidx/media2/exoplayer/external/util/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    return p1

    :cond_4
    :goto_1
    return p2
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;ZZZZZ)Landroidx/media2/exoplayer/external/mediacodec/a;
    .locals 12

    .line 179
    new-instance v11, Landroidx/media2/exoplayer/external/mediacodec/a;

    const/4 v5, 0x0

    move-object v0, v11

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    invoke-direct/range {v0 .. v10}, Landroidx/media2/exoplayer/external/mediacodec/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;ZZZZZZ)V

    return-object v11
.end method

.method private a(I)Z
    .locals 3

    .line 468
    iget-object v0, p0, Landroidx/media2/exoplayer/external/mediacodec/a;->d:Landroid/media/MediaCodecInfo$CodecCapabilities;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string p1, "sampleRate.caps"

    .line 469
    invoke-virtual {p0, p1}, Landroidx/media2/exoplayer/external/mediacodec/a;->a(Ljava/lang/String;)V

    return v1

    .line 472
    :cond_0
    invoke-virtual {v0}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getAudioCapabilities()Landroid/media/MediaCodecInfo$AudioCapabilities;

    move-result-object v0

    if-nez v0, :cond_1

    const-string p1, "sampleRate.aCaps"

    .line 474
    invoke-virtual {p0, p1}, Landroidx/media2/exoplayer/external/mediacodec/a;->a(Ljava/lang/String;)V

    return v1

    .line 477
    :cond_1
    invoke-virtual {v0, p1}, Landroid/media/MediaCodecInfo$AudioCapabilities;->isSampleRateSupported(I)Z

    move-result v0

    if-nez v0, :cond_2

    const/16 v0, 0x1f

    .line 478
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "sampleRate.support, "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/media2/exoplayer/external/mediacodec/a;->a(Ljava/lang/String;)V

    return v1

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method private static a(Landroid/media/MediaCodecInfo$VideoCapabilities;IID)Z
    .locals 3

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    cmpl-double v2, p3, v0

    if-eqz v2, :cond_1

    const-wide/16 v0, 0x0

    cmpg-double v2, p3, v0

    if-gtz v2, :cond_0

    goto :goto_0

    .line 592
    :cond_0
    invoke-static {p3, p4}, Ljava/lang/Math;->floor(D)D

    move-result-wide p3

    .line 593
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/media/MediaCodecInfo$VideoCapabilities;->areSizeAndRateSupported(IID)Z

    move-result p0

    return p0

    .line 587
    :cond_1
    :goto_0
    invoke-virtual {p0, p1, p2}, Landroid/media/MediaCodecInfo$VideoCapabilities;->isSizeSupported(II)Z

    move-result p0

    return p0
.end method

.method private b(Ljava/lang/String;)V
    .locals 5

    .line 518
    iget-object v0, p0, Landroidx/media2/exoplayer/external/mediacodec/a;->a:Ljava/lang/String;

    iget-object v1, p0, Landroidx/media2/exoplayer/external/mediacodec/a;->b:Ljava/lang/String;

    sget-object v2, Landroidx/media2/exoplayer/external/util/ac;->e:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x19

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "AssumedSupport ["

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "] ["

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroidx/media2/exoplayer/external/util/j;->a()V

    return-void
.end method

.method private b(I)Z
    .locals 4

    .line 494
    iget-object v0, p0, Landroidx/media2/exoplayer/external/mediacodec/a;->d:Landroid/media/MediaCodecInfo$CodecCapabilities;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string p1, "channelCount.caps"

    .line 495
    invoke-virtual {p0, p1}, Landroidx/media2/exoplayer/external/mediacodec/a;->a(Ljava/lang/String;)V

    return v1

    .line 498
    :cond_0
    invoke-virtual {v0}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getAudioCapabilities()Landroid/media/MediaCodecInfo$AudioCapabilities;

    move-result-object v0

    if-nez v0, :cond_1

    const-string p1, "channelCount.aCaps"

    .line 500
    invoke-virtual {p0, p1}, Landroidx/media2/exoplayer/external/mediacodec/a;->a(Ljava/lang/String;)V

    return v1

    .line 503
    :cond_1
    iget-object v2, p0, Landroidx/media2/exoplayer/external/mediacodec/a;->a:Ljava/lang/String;

    iget-object v3, p0, Landroidx/media2/exoplayer/external/mediacodec/a;->b:Ljava/lang/String;

    .line 504
    invoke-virtual {v0}, Landroid/media/MediaCodecInfo$AudioCapabilities;->getMaxInputChannelCount()I

    move-result v0

    .line 503
    invoke-static {v2, v3, v0}, Landroidx/media2/exoplayer/external/mediacodec/a;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    if-ge v0, p1, :cond_2

    const/16 v0, 0x21

    .line 506
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "channelCount.support, "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/media2/exoplayer/external/mediacodec/a;->a(Ljava/lang/String;)V

    return v1

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method private c(Landroidx/media2/exoplayer/external/Format;)Z
    .locals 11

    .line 288
    iget-object v0, p1, Landroidx/media2/exoplayer/external/Format;->codecs:Ljava/lang/String;

    const/4 v1, 0x1

    if-eqz v0, :cond_7

    iget-object v0, p0, Landroidx/media2/exoplayer/external/mediacodec/a;->b:Ljava/lang/String;

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 291
    :cond_0
    iget-object v0, p1, Landroidx/media2/exoplayer/external/Format;->codecs:Ljava/lang/String;

    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/m;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    .line 295
    :cond_1
    iget-object v2, p0, Landroidx/media2/exoplayer/external/mediacodec/a;->b:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, ", "

    const/4 v4, 0x0

    if-nez v2, :cond_2

    .line 296
    iget-object p1, p1, Landroidx/media2/exoplayer/external/Format;->codecs:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0xd

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "codec.mime "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/media2/exoplayer/external/mediacodec/a;->a(Ljava/lang/String;)V

    return v4

    .line 299
    :cond_2
    invoke-static {p1}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->a(Landroidx/media2/exoplayer/external/Format;)Landroid/util/Pair;

    move-result-object v2

    if-nez v2, :cond_3

    return v1

    .line 304
    :cond_3
    iget-object v5, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 305
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 306
    iget-boolean v6, p0, Landroidx/media2/exoplayer/external/mediacodec/a;->l:Z

    if-nez v6, :cond_4

    const/16 v6, 0x2a

    if-eq v5, v6, :cond_4

    return v1

    .line 311
    :cond_4
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/mediacodec/a;->a()[Landroid/media/MediaCodecInfo$CodecProfileLevel;

    move-result-object v6

    array-length v7, v6

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v7, :cond_6

    aget-object v9, v6, v8

    .line 312
    iget v10, v9, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    if-ne v10, v5, :cond_5

    iget v9, v9, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    if-lt v9, v2, :cond_5

    return v1

    :cond_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 316
    :cond_6
    iget-object p1, p1, Landroidx/media2/exoplayer/external/Format;->codecs:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x16

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "codec.profileLevel, "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/media2/exoplayer/external/mediacodec/a;->a(Ljava/lang/String;)V

    return v4

    :cond_7
    :goto_1
    return v1
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 5

    .line 513
    iget-object v0, p0, Landroidx/media2/exoplayer/external/mediacodec/a;->a:Ljava/lang/String;

    iget-object v1, p0, Landroidx/media2/exoplayer/external/mediacodec/a;->b:Ljava/lang/String;

    sget-object v2, Landroidx/media2/exoplayer/external/util/ac;->e:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x14

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "NoSupport ["

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "] ["

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroidx/media2/exoplayer/external/util/j;->a()V

    return-void
.end method

.method public final a(IID)Z
    .locals 4

    .line 406
    iget-object v0, p0, Landroidx/media2/exoplayer/external/mediacodec/a;->d:Landroid/media/MediaCodecInfo$CodecCapabilities;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string p1, "sizeAndRate.caps"

    .line 407
    invoke-virtual {p0, p1}, Landroidx/media2/exoplayer/external/mediacodec/a;->a(Ljava/lang/String;)V

    return v1

    .line 410
    :cond_0
    invoke-virtual {v0}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getVideoCapabilities()Landroid/media/MediaCodecInfo$VideoCapabilities;

    move-result-object v0

    if-nez v0, :cond_1

    const-string p1, "sizeAndRate.vCaps"

    .line 412
    invoke-virtual {p0, p1}, Landroidx/media2/exoplayer/external/mediacodec/a;->a(Ljava/lang/String;)V

    return v1

    .line 415
    :cond_1
    invoke-static {v0, p1, p2, p3, p4}, Landroidx/media2/exoplayer/external/mediacodec/a;->a(Landroid/media/MediaCodecInfo$VideoCapabilities;IID)Z

    move-result v2

    if-nez v2, :cond_4

    const/16 v2, 0x45

    const-string v3, "x"

    if-ge p1, p2, :cond_3

    .line 420
    invoke-static {v0, p2, p1, p3, p4}, Landroidx/media2/exoplayer/external/mediacodec/a;->a(Landroid/media/MediaCodecInfo$VideoCapabilities;IID)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    .line 424
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "sizeAndRate.rotated, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/mediacodec/a;->b(Ljava/lang/String;)V

    goto :goto_1

    .line 421
    :cond_3
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "sizeAndRate.support, "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/media2/exoplayer/external/mediacodec/a;->a(Ljava/lang/String;)V

    return v1

    :cond_4
    :goto_1
    const/4 p1, 0x1

    return p1
.end method

.method public final a(Landroidx/media2/exoplayer/external/Format;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$DecoderQueryException;
        }
    .end annotation

    .line 253
    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/mediacodec/a;->c(Landroidx/media2/exoplayer/external/Format;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 257
    :cond_0
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/mediacodec/a;->l:Z

    const/16 v2, 0x15

    const/4 v3, 0x1

    if-eqz v0, :cond_6

    .line 258
    iget v0, p1, Landroidx/media2/exoplayer/external/Format;->width:I

    if-lez v0, :cond_5

    iget v0, p1, Landroidx/media2/exoplayer/external/Format;->height:I

    if-gtz v0, :cond_1

    goto :goto_0

    .line 261
    :cond_1
    sget v0, Landroidx/media2/exoplayer/external/util/ac;->a:I

    if-lt v0, v2, :cond_2

    .line 262
    iget v0, p1, Landroidx/media2/exoplayer/external/Format;->width:I

    iget v1, p1, Landroidx/media2/exoplayer/external/Format;->height:I

    iget p1, p1, Landroidx/media2/exoplayer/external/Format;->frameRate:F

    float-to-double v2, p1

    invoke-virtual {p0, v0, v1, v2, v3}, Landroidx/media2/exoplayer/external/mediacodec/a;->a(IID)Z

    move-result p1

    return p1

    .line 264
    :cond_2
    iget v0, p1, Landroidx/media2/exoplayer/external/Format;->width:I

    iget v2, p1, Landroidx/media2/exoplayer/external/Format;->height:I

    mul-int v0, v0, v2

    .line 265
    invoke-static {}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->b()I

    move-result v2

    if-gt v0, v2, :cond_3

    const/4 v1, 0x1

    :cond_3
    if-nez v1, :cond_4

    .line 267
    iget v0, p1, Landroidx/media2/exoplayer/external/Format;->width:I

    iget p1, p1, Landroidx/media2/exoplayer/external/Format;->height:I

    const/16 v2, 0x28

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "legacyFrameSize, "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "x"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/media2/exoplayer/external/mediacodec/a;->a(Ljava/lang/String;)V

    :cond_4
    return v1

    :cond_5
    :goto_0
    return v3

    .line 272
    :cond_6
    sget v0, Landroidx/media2/exoplayer/external/util/ac;->a:I

    if-lt v0, v2, :cond_9

    iget v0, p1, Landroidx/media2/exoplayer/external/Format;->sampleRate:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_7

    iget v0, p1, Landroidx/media2/exoplayer/external/Format;->sampleRate:I

    .line 274
    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/mediacodec/a;->a(I)Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_7
    iget v0, p1, Landroidx/media2/exoplayer/external/Format;->channelCount:I

    if-eq v0, v2, :cond_9

    iget p1, p1, Landroidx/media2/exoplayer/external/Format;->channelCount:I

    .line 276
    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/mediacodec/a;->b(I)Z

    move-result p1

    if-eqz p1, :cond_8

    goto :goto_1

    :cond_8
    return v1

    :cond_9
    :goto_1
    return v3
.end method

.method public final a(Landroidx/media2/exoplayer/external/Format;Landroidx/media2/exoplayer/external/Format;Z)Z
    .locals 4

    .line 364
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/mediacodec/a;->l:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    .line 365
    iget-object v0, p1, Landroidx/media2/exoplayer/external/Format;->sampleMimeType:Ljava/lang/String;

    iget-object v3, p2, Landroidx/media2/exoplayer/external/Format;->sampleMimeType:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p1, Landroidx/media2/exoplayer/external/Format;->rotationDegrees:I

    iget v3, p2, Landroidx/media2/exoplayer/external/Format;->rotationDegrees:I

    if-ne v0, v3, :cond_3

    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/mediacodec/a;->e:Z

    if-nez v0, :cond_0

    iget v0, p1, Landroidx/media2/exoplayer/external/Format;->width:I

    iget v3, p2, Landroidx/media2/exoplayer/external/Format;->width:I

    if-ne v0, v3, :cond_3

    iget v0, p1, Landroidx/media2/exoplayer/external/Format;->height:I

    iget v3, p2, Landroidx/media2/exoplayer/external/Format;->height:I

    if-ne v0, v3, :cond_3

    :cond_0
    if-nez p3, :cond_1

    iget-object p3, p2, Landroidx/media2/exoplayer/external/Format;->colorInfo:Landroidx/media2/exoplayer/external/video/ColorInfo;

    if-eqz p3, :cond_2

    :cond_1
    iget-object p1, p1, Landroidx/media2/exoplayer/external/Format;->colorInfo:Landroidx/media2/exoplayer/external/video/ColorInfo;

    iget-object p2, p2, Landroidx/media2/exoplayer/external/Format;->colorInfo:Landroidx/media2/exoplayer/external/video/ColorInfo;

    .line 370
    invoke-static {p1, p2}, Landroidx/media2/exoplayer/external/util/ac;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_2
    return v1

    :cond_3
    return v2

    .line 372
    :cond_4
    iget-object p3, p0, Landroidx/media2/exoplayer/external/mediacodec/a;->b:Ljava/lang/String;

    const-string v0, "audio/mp4a-latm"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_7

    iget-object p3, p1, Landroidx/media2/exoplayer/external/Format;->sampleMimeType:Ljava/lang/String;

    iget-object v0, p2, Landroidx/media2/exoplayer/external/Format;->sampleMimeType:Ljava/lang/String;

    .line 373
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_7

    iget p3, p1, Landroidx/media2/exoplayer/external/Format;->channelCount:I

    iget v0, p2, Landroidx/media2/exoplayer/external/Format;->channelCount:I

    if-ne p3, v0, :cond_7

    iget p3, p1, Landroidx/media2/exoplayer/external/Format;->sampleRate:I

    iget v0, p2, Landroidx/media2/exoplayer/external/Format;->sampleRate:I

    if-eq p3, v0, :cond_5

    goto :goto_0

    .line 380
    :cond_5
    invoke-static {p1}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->a(Landroidx/media2/exoplayer/external/Format;)Landroid/util/Pair;

    move-result-object p1

    .line 382
    invoke-static {p2}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->a(Landroidx/media2/exoplayer/external/Format;)Landroid/util/Pair;

    move-result-object p2

    if-eqz p1, :cond_7

    if-nez p2, :cond_6

    goto :goto_0

    .line 386
    :cond_6
    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 387
    iget-object p2, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const/16 p3, 0x2a

    if-ne p1, p3, :cond_7

    if-ne p2, p3, :cond_7

    return v1

    :cond_7
    :goto_0
    return v2
.end method

.method public final a()[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    .locals 1

    .line 228
    iget-object v0, p0, Landroidx/media2/exoplayer/external/mediacodec/a;->d:Landroid/media/MediaCodecInfo$CodecCapabilities;

    if-eqz v0, :cond_1

    iget-object v0, v0, Landroid/media/MediaCodecInfo$CodecCapabilities;->profileLevels:[Landroid/media/MediaCodecInfo$CodecProfileLevel;

    if-nez v0, :cond_0

    goto :goto_0

    .line 229
    :cond_0
    iget-object v0, p0, Landroidx/media2/exoplayer/external/mediacodec/a;->d:Landroid/media/MediaCodecInfo$CodecCapabilities;

    iget-object v0, v0, Landroid/media/MediaCodecInfo$CodecCapabilities;->profileLevels:[Landroid/media/MediaCodecInfo$CodecProfileLevel;

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    new-array v0, v0, [Landroid/media/MediaCodecInfo$CodecProfileLevel;

    return-object v0
.end method

.method public final b(Landroidx/media2/exoplayer/external/Format;)Z
    .locals 1

    .line 343
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/mediacodec/a;->l:Z

    if-eqz v0, :cond_0

    .line 344
    iget-boolean p1, p0, Landroidx/media2/exoplayer/external/mediacodec/a;->e:Z

    return p1

    .line 346
    :cond_0
    invoke-static {p1}, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;->a(Landroidx/media2/exoplayer/external/Format;)Landroid/util/Pair;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 347
    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/16 v0, 0x2a

    if-ne p1, v0, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 219
    iget-object v0, p0, Landroidx/media2/exoplayer/external/mediacodec/a;->a:Ljava/lang/String;

    return-object v0
.end method

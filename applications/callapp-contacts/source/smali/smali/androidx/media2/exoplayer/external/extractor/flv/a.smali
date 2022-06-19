.class final Landroidx/media2/exoplayer/external/extractor/flv/a;
.super Landroidx/media2/exoplayer/external/extractor/flv/TagPayloadReader;
.source "SourceFile"


# static fields
.field private static final a:[I


# instance fields
.field private c:Z

.field private d:Z

.field private e:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 47
    fill-array-data v0, :array_0

    sput-object v0, Landroidx/media2/exoplayer/external/extractor/flv/a;->a:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x1588
        0x2b11
        0x5622
        0xac44
    .end array-data
.end method

.method public constructor <init>(Landroidx/media2/exoplayer/external/extractor/q;)V
    .locals 0

    .line 55
    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/extractor/flv/TagPayloadReader;-><init>(Landroidx/media2/exoplayer/external/extractor/q;)V

    return-void
.end method


# virtual methods
.method protected final a(Landroidx/media2/exoplayer/external/util/p;)Z
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/extractor/flv/TagPayloadReader$UnsupportedFormatException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 65
    iget-boolean v1, v0, Landroidx/media2/exoplayer/external/extractor/flv/a;->c:Z

    const/4 v2, 0x1

    if-nez v1, :cond_6

    .line 66
    invoke-virtual/range {p1 .. p1}, Landroidx/media2/exoplayer/external/util/p;->c()I

    move-result v1

    shr-int/lit8 v3, v1, 0x4

    and-int/lit8 v3, v3, 0xf

    .line 67
    iput v3, v0, Landroidx/media2/exoplayer/external/extractor/flv/a;->e:I

    const/4 v4, 0x3

    const/4 v5, 0x2

    if-ne v3, v5, :cond_0

    shr-int/2addr v1, v5

    and-int/2addr v1, v4

    .line 70
    sget-object v3, Landroidx/media2/exoplayer/external/extractor/flv/a;->a:[I

    aget v10, v3, v1

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, -0x1

    const/4 v8, -0x1

    const/4 v9, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const-string v5, "audio/mpeg"

    .line 71
    invoke-static/range {v4 .. v14}, Landroidx/media2/exoplayer/external/Format;->createAudioSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/util/List;Landroidx/media2/exoplayer/external/drm/DrmInitData;ILjava/lang/String;)Landroidx/media2/exoplayer/external/Format;

    move-result-object v1

    .line 73
    iget-object v3, v0, Landroidx/media2/exoplayer/external/extractor/flv/a;->b:Landroidx/media2/exoplayer/external/extractor/q;

    invoke-interface {v3, v1}, Landroidx/media2/exoplayer/external/extractor/q;->a(Landroidx/media2/exoplayer/external/Format;)V

    .line 74
    iput-boolean v2, v0, Landroidx/media2/exoplayer/external/extractor/flv/a;->d:Z

    goto :goto_3

    :cond_0
    const/4 v6, 0x7

    if-eq v3, v6, :cond_3

    const/16 v7, 0x8

    if-ne v3, v7, :cond_1

    goto :goto_0

    :cond_1
    const/16 v1, 0xa

    if-ne v3, v1, :cond_2

    goto :goto_3

    .line 84
    :cond_2
    new-instance v1, Landroidx/media2/exoplayer/external/extractor/flv/TagPayloadReader$UnsupportedFormatException;

    iget v2, v0, Landroidx/media2/exoplayer/external/extractor/flv/a;->e:I

    const/16 v3, 0x27

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Audio format not supported: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/media2/exoplayer/external/extractor/flv/TagPayloadReader$UnsupportedFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    :goto_0
    if-ne v3, v6, :cond_4

    const-string v3, "audio/g711-alaw"

    goto :goto_1

    :cond_4
    const-string v3, "audio/g711-mlaw"

    :goto_1
    move-object v7, v3

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_5

    const/4 v13, 0x2

    goto :goto_2

    :cond_5
    const/4 v13, 0x3

    :goto_2
    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, -0x1

    const/4 v10, -0x1

    const/4 v11, 0x1

    const/16 v12, 0x1f40

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    .line 79
    invoke-static/range {v6 .. v17}, Landroidx/media2/exoplayer/external/Format;->createAudioSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIILjava/util/List;Landroidx/media2/exoplayer/external/drm/DrmInitData;ILjava/lang/String;)Landroidx/media2/exoplayer/external/Format;

    move-result-object v1

    .line 81
    iget-object v3, v0, Landroidx/media2/exoplayer/external/extractor/flv/a;->b:Landroidx/media2/exoplayer/external/extractor/q;

    invoke-interface {v3, v1}, Landroidx/media2/exoplayer/external/extractor/q;->a(Landroidx/media2/exoplayer/external/Format;)V

    .line 82
    iput-boolean v2, v0, Landroidx/media2/exoplayer/external/extractor/flv/a;->d:Z

    .line 86
    :goto_3
    iput-boolean v2, v0, Landroidx/media2/exoplayer/external/extractor/flv/a;->c:Z

    goto :goto_4

    :cond_6
    move-object/from16 v1, p1

    .line 89
    invoke-virtual {v1, v2}, Landroidx/media2/exoplayer/external/util/p;->d(I)V

    :goto_4
    return v2
.end method

.method protected final a(Landroidx/media2/exoplayer/external/util/p;J)Z
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ParserException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 96
    iget v2, v0, Landroidx/media2/exoplayer/external/extractor/flv/a;->e:I

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-ne v2, v4, :cond_0

    .line 97
    invoke-virtual/range {p1 .. p1}, Landroidx/media2/exoplayer/external/util/p;->b()I

    move-result v9

    .line 98
    iget-object v2, v0, Landroidx/media2/exoplayer/external/extractor/flv/a;->b:Landroidx/media2/exoplayer/external/extractor/q;

    invoke-interface {v2, v1, v9}, Landroidx/media2/exoplayer/external/extractor/q;->a(Landroidx/media2/exoplayer/external/util/p;I)V

    .line 99
    iget-object v5, v0, Landroidx/media2/exoplayer/external/extractor/flv/a;->b:Landroidx/media2/exoplayer/external/extractor/q;

    const/4 v8, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-wide/from16 v6, p2

    invoke-interface/range {v5 .. v11}, Landroidx/media2/exoplayer/external/extractor/q;->a(JIIILandroidx/media2/exoplayer/external/extractor/q$a;)V

    return v3

    .line 102
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroidx/media2/exoplayer/external/util/p;->c()I

    move-result v2

    const/4 v4, 0x0

    if-nez v2, :cond_1

    .line 103
    iget-boolean v5, v0, Landroidx/media2/exoplayer/external/extractor/flv/a;->d:Z

    if-nez v5, :cond_1

    .line 105
    invoke-virtual/range {p1 .. p1}, Landroidx/media2/exoplayer/external/util/p;->b()I

    move-result v2

    new-array v5, v2, [B

    .line 106
    invoke-virtual {v1, v5, v4, v2}, Landroidx/media2/exoplayer/external/util/p;->a([BII)V

    .line 107
    invoke-static {v5}, Landroidx/media2/exoplayer/external/util/c;->a([B)Landroid/util/Pair;

    move-result-object v1

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, -0x1

    const/4 v10, -0x1

    .line 109
    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    .line 110
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v11

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v12

    .line 111
    invoke-static {v5}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v13

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const-string v7, "audio/mp4a-latm"

    .line 109
    invoke-static/range {v6 .. v16}, Landroidx/media2/exoplayer/external/Format;->createAudioSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/util/List;Landroidx/media2/exoplayer/external/drm/DrmInitData;ILjava/lang/String;)Landroidx/media2/exoplayer/external/Format;

    move-result-object v1

    .line 112
    iget-object v2, v0, Landroidx/media2/exoplayer/external/extractor/flv/a;->b:Landroidx/media2/exoplayer/external/extractor/q;

    invoke-interface {v2, v1}, Landroidx/media2/exoplayer/external/extractor/q;->a(Landroidx/media2/exoplayer/external/Format;)V

    .line 113
    iput-boolean v3, v0, Landroidx/media2/exoplayer/external/extractor/flv/a;->d:Z

    return v4

    .line 115
    :cond_1
    iget v5, v0, Landroidx/media2/exoplayer/external/extractor/flv/a;->e:I

    const/16 v6, 0xa

    if-ne v5, v6, :cond_3

    if-ne v2, v3, :cond_2

    goto :goto_0

    :cond_2
    return v4

    .line 116
    :cond_3
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroidx/media2/exoplayer/external/util/p;->b()I

    move-result v11

    .line 117
    iget-object v2, v0, Landroidx/media2/exoplayer/external/extractor/flv/a;->b:Landroidx/media2/exoplayer/external/extractor/q;

    invoke-interface {v2, v1, v11}, Landroidx/media2/exoplayer/external/extractor/q;->a(Landroidx/media2/exoplayer/external/util/p;I)V

    .line 118
    iget-object v7, v0, Landroidx/media2/exoplayer/external/extractor/flv/a;->b:Landroidx/media2/exoplayer/external/extractor/q;

    const/4 v10, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-wide/from16 v8, p2

    invoke-interface/range {v7 .. v13}, Landroidx/media2/exoplayer/external/extractor/q;->a(JIIILandroidx/media2/exoplayer/external/extractor/q$a;)V

    return v3
.end method

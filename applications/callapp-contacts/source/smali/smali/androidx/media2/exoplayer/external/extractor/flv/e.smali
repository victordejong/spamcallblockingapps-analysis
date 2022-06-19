.class final Landroidx/media2/exoplayer/external/extractor/flv/e;
.super Landroidx/media2/exoplayer/external/extractor/flv/TagPayloadReader;
.source "SourceFile"


# instance fields
.field private final a:Landroidx/media2/exoplayer/external/util/p;

.field private final c:Landroidx/media2/exoplayer/external/util/p;

.field private d:I

.field private e:Z

.field private f:Z

.field private g:I


# direct methods
.method public constructor <init>(Landroidx/media2/exoplayer/external/extractor/q;)V
    .locals 1

    .line 63
    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/extractor/flv/TagPayloadReader;-><init>(Landroidx/media2/exoplayer/external/extractor/q;)V

    .line 64
    new-instance p1, Landroidx/media2/exoplayer/external/util/p;

    sget-object v0, Landroidx/media2/exoplayer/external/util/n;->a:[B

    invoke-direct {p1, v0}, Landroidx/media2/exoplayer/external/util/p;-><init>([B)V

    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/flv/e;->a:Landroidx/media2/exoplayer/external/util/p;

    .line 65
    new-instance p1, Landroidx/media2/exoplayer/external/util/p;

    const/4 v0, 0x4

    invoke-direct {p1, v0}, Landroidx/media2/exoplayer/external/util/p;-><init>(I)V

    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/flv/e;->c:Landroidx/media2/exoplayer/external/util/p;

    return-void
.end method


# virtual methods
.method protected final a(Landroidx/media2/exoplayer/external/util/p;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/extractor/flv/TagPayloadReader$UnsupportedFormatException;
        }
    .end annotation

    .line 75
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/util/p;->c()I

    move-result p1

    shr-int/lit8 v0, p1, 0x4

    and-int/lit8 v0, v0, 0xf

    and-int/lit8 p1, p1, 0xf

    const/4 v1, 0x7

    if-ne p1, v1, :cond_1

    .line 82
    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/flv/e;->g:I

    const/4 p1, 0x5

    if-eq v0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1

    .line 80
    :cond_1
    new-instance v0, Landroidx/media2/exoplayer/external/extractor/flv/TagPayloadReader$UnsupportedFormatException;

    const/16 v1, 0x27

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Video format not supported: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Landroidx/media2/exoplayer/external/extractor/flv/TagPayloadReader$UnsupportedFormatException;-><init>(Ljava/lang/String;)V

    throw v0
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

    .line 88
    invoke-virtual/range {p1 .. p1}, Landroidx/media2/exoplayer/external/util/p;->c()I

    move-result v2

    .line 1278
    iget-object v3, v1, Landroidx/media2/exoplayer/external/util/p;->a:[B

    iget v4, v1, Landroidx/media2/exoplayer/external/util/p;->b:I

    add-int/lit8 v5, v4, 0x1

    iput v5, v1, Landroidx/media2/exoplayer/external/util/p;->b:I

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x18

    shr-int/lit8 v3, v3, 0x8

    iget-object v4, v1, Landroidx/media2/exoplayer/external/util/p;->a:[B

    iget v5, v1, Landroidx/media2/exoplayer/external/util/p;->b:I

    add-int/lit8 v6, v5, 0x1

    iput v6, v1, Landroidx/media2/exoplayer/external/util/p;->b:I

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v3, v4

    iget-object v4, v1, Landroidx/media2/exoplayer/external/util/p;->a:[B

    iget v5, v1, Landroidx/media2/exoplayer/external/util/p;->b:I

    add-int/lit8 v6, v5, 0x1

    iput v6, v1, Landroidx/media2/exoplayer/external/util/p;->b:I

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v3, v4

    int-to-long v3, v3

    const-wide/16 v5, 0x3e8

    mul-long v3, v3, v5

    add-long v6, p2, v3

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_0

    .line 93
    iget-boolean v5, v0, Landroidx/media2/exoplayer/external/extractor/flv/e;->e:Z

    if-nez v5, :cond_0

    .line 94
    new-instance v2, Landroidx/media2/exoplayer/external/util/p;

    invoke-virtual/range {p1 .. p1}, Landroidx/media2/exoplayer/external/util/p;->b()I

    move-result v5

    new-array v5, v5, [B

    invoke-direct {v2, v5}, Landroidx/media2/exoplayer/external/util/p;-><init>([B)V

    .line 95
    iget-object v5, v2, Landroidx/media2/exoplayer/external/util/p;->a:[B

    invoke-virtual/range {p1 .. p1}, Landroidx/media2/exoplayer/external/util/p;->b()I

    move-result v6

    invoke-virtual {v1, v5, v4, v6}, Landroidx/media2/exoplayer/external/util/p;->a([BII)V

    .line 96
    invoke-static {v2}, Landroidx/media2/exoplayer/external/video/a;->a(Landroidx/media2/exoplayer/external/util/p;)Landroidx/media2/exoplayer/external/video/a;

    move-result-object v1

    .line 97
    iget v2, v1, Landroidx/media2/exoplayer/external/video/a;->b:I

    iput v2, v0, Landroidx/media2/exoplayer/external/extractor/flv/e;->d:I

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, -0x1

    const/4 v9, -0x1

    .line 99
    iget v10, v1, Landroidx/media2/exoplayer/external/video/a;->c:I

    iget v11, v1, Landroidx/media2/exoplayer/external/video/a;->d:I

    const/high16 v12, -0x40800000    # -1.0f

    iget-object v13, v1, Landroidx/media2/exoplayer/external/video/a;->a:Ljava/util/List;

    const/4 v14, -0x1

    iget v15, v1, Landroidx/media2/exoplayer/external/video/a;->e:F

    const/16 v16, 0x0

    const-string v6, "video/avc"

    invoke-static/range {v5 .. v16}, Landroidx/media2/exoplayer/external/Format;->createVideoSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFLjava/util/List;IFLandroidx/media2/exoplayer/external/drm/DrmInitData;)Landroidx/media2/exoplayer/external/Format;

    move-result-object v1

    .line 102
    iget-object v2, v0, Landroidx/media2/exoplayer/external/extractor/flv/e;->b:Landroidx/media2/exoplayer/external/extractor/q;

    invoke-interface {v2, v1}, Landroidx/media2/exoplayer/external/extractor/q;->a(Landroidx/media2/exoplayer/external/Format;)V

    .line 103
    iput-boolean v3, v0, Landroidx/media2/exoplayer/external/extractor/flv/e;->e:Z

    return v4

    :cond_0
    if-ne v2, v3, :cond_4

    .line 105
    iget-boolean v2, v0, Landroidx/media2/exoplayer/external/extractor/flv/e;->e:Z

    if-eqz v2, :cond_4

    .line 106
    iget v2, v0, Landroidx/media2/exoplayer/external/extractor/flv/e;->g:I

    if-ne v2, v3, :cond_1

    const/4 v8, 0x1

    goto :goto_0

    :cond_1
    const/4 v8, 0x0

    .line 107
    :goto_0
    iget-boolean v2, v0, Landroidx/media2/exoplayer/external/extractor/flv/e;->f:Z

    if-nez v2, :cond_2

    if-nez v8, :cond_2

    return v4

    .line 113
    :cond_2
    iget-object v2, v0, Landroidx/media2/exoplayer/external/extractor/flv/e;->c:Landroidx/media2/exoplayer/external/util/p;

    iget-object v2, v2, Landroidx/media2/exoplayer/external/util/p;->a:[B

    .line 114
    aput-byte v4, v2, v4

    .line 115
    aput-byte v4, v2, v3

    const/4 v5, 0x2

    .line 116
    aput-byte v4, v2, v5

    .line 117
    iget v2, v0, Landroidx/media2/exoplayer/external/extractor/flv/e;->d:I

    const/4 v5, 0x4

    rsub-int/lit8 v2, v2, 0x4

    const/4 v9, 0x0

    .line 123
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroidx/media2/exoplayer/external/util/p;->b()I

    move-result v10

    if-lez v10, :cond_3

    .line 125
    iget-object v10, v0, Landroidx/media2/exoplayer/external/extractor/flv/e;->c:Landroidx/media2/exoplayer/external/util/p;

    iget-object v10, v10, Landroidx/media2/exoplayer/external/util/p;->a:[B

    iget v11, v0, Landroidx/media2/exoplayer/external/extractor/flv/e;->d:I

    invoke-virtual {v1, v10, v2, v11}, Landroidx/media2/exoplayer/external/util/p;->a([BII)V

    .line 126
    iget-object v10, v0, Landroidx/media2/exoplayer/external/extractor/flv/e;->c:Landroidx/media2/exoplayer/external/util/p;

    invoke-virtual {v10, v4}, Landroidx/media2/exoplayer/external/util/p;->c(I)V

    .line 127
    iget-object v10, v0, Landroidx/media2/exoplayer/external/extractor/flv/e;->c:Landroidx/media2/exoplayer/external/util/p;

    invoke-virtual {v10}, Landroidx/media2/exoplayer/external/util/p;->n()I

    move-result v10

    .line 130
    iget-object v11, v0, Landroidx/media2/exoplayer/external/extractor/flv/e;->a:Landroidx/media2/exoplayer/external/util/p;

    invoke-virtual {v11, v4}, Landroidx/media2/exoplayer/external/util/p;->c(I)V

    .line 131
    iget-object v11, v0, Landroidx/media2/exoplayer/external/extractor/flv/e;->b:Landroidx/media2/exoplayer/external/extractor/q;

    iget-object v12, v0, Landroidx/media2/exoplayer/external/extractor/flv/e;->a:Landroidx/media2/exoplayer/external/util/p;

    invoke-interface {v11, v12, v5}, Landroidx/media2/exoplayer/external/extractor/q;->a(Landroidx/media2/exoplayer/external/util/p;I)V

    add-int/lit8 v9, v9, 0x4

    .line 135
    iget-object v11, v0, Landroidx/media2/exoplayer/external/extractor/flv/e;->b:Landroidx/media2/exoplayer/external/extractor/q;

    invoke-interface {v11, v1, v10}, Landroidx/media2/exoplayer/external/extractor/q;->a(Landroidx/media2/exoplayer/external/util/p;I)V

    add-int/2addr v9, v10

    goto :goto_1

    .line 138
    :cond_3
    iget-object v5, v0, Landroidx/media2/exoplayer/external/extractor/flv/e;->b:Landroidx/media2/exoplayer/external/extractor/q;

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-interface/range {v5 .. v11}, Landroidx/media2/exoplayer/external/extractor/q;->a(JIIILandroidx/media2/exoplayer/external/extractor/q$a;)V

    .line 140
    iput-boolean v3, v0, Landroidx/media2/exoplayer/external/extractor/flv/e;->f:Z

    return v3

    :cond_4
    return v4
.end method

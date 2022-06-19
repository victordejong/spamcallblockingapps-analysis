.class public final Landroidx/media2/exoplayer/external/extractor/e/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media2/exoplayer/external/extractor/e/m;


# instance fields
.field a:J

.field private final b:Landroidx/media2/exoplayer/external/util/o;

.field private final c:Landroidx/media2/exoplayer/external/util/p;

.field private final d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Landroidx/media2/exoplayer/external/extractor/q;

.field private g:I

.field private h:I

.field private i:Z

.field private j:J

.field private k:Landroidx/media2/exoplayer/external/Format;

.field private l:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 79
    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/extractor/e/c;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    new-instance v0, Landroidx/media2/exoplayer/external/util/o;

    const/16 v1, 0x80

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Landroidx/media2/exoplayer/external/util/o;-><init>([B)V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/extractor/e/c;->b:Landroidx/media2/exoplayer/external/util/o;

    .line 89
    new-instance v1, Landroidx/media2/exoplayer/external/util/p;

    iget-object v0, v0, Landroidx/media2/exoplayer/external/util/o;->a:[B

    invoke-direct {v1, v0}, Landroidx/media2/exoplayer/external/util/p;-><init>([B)V

    iput-object v1, p0, Landroidx/media2/exoplayer/external/extractor/e/c;->c:Landroidx/media2/exoplayer/external/util/p;

    const/4 v0, 0x0

    .line 90
    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/e/c;->g:I

    .line 91
    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/e/c;->d:Ljava/lang/String;

    return-void
.end method

.method private a(Landroidx/media2/exoplayer/external/util/p;[B)Z
    .locals 3

    .line 164
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/util/p;->b()I

    move-result v0

    iget v1, p0, Landroidx/media2/exoplayer/external/extractor/e/c;->h:I

    const/16 v2, 0x80

    rsub-int v1, v1, 0x80

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 165
    iget v1, p0, Landroidx/media2/exoplayer/external/extractor/e/c;->h:I

    invoke-virtual {p1, p2, v1, v0}, Landroidx/media2/exoplayer/external/util/p;->a([BII)V

    .line 166
    iget p1, p0, Landroidx/media2/exoplayer/external/extractor/e/c;->h:I

    add-int/2addr p1, v0

    iput p1, p0, Landroidx/media2/exoplayer/external/extractor/e/c;->h:I

    if-ne p1, v2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private b(Landroidx/media2/exoplayer/external/util/p;)Z
    .locals 5

    .line 178
    :goto_0
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/util/p;->b()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_4

    .line 179
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/extractor/e/c;->i:Z

    const/16 v2, 0xb

    const/4 v3, 0x1

    if-nez v0, :cond_1

    .line 180
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/util/p;->c()I

    move-result v0

    if-ne v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    iput-boolean v1, p0, Landroidx/media2/exoplayer/external/extractor/e/c;->i:Z

    goto :goto_0

    .line 183
    :cond_1
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/util/p;->c()I

    move-result v0

    const/16 v4, 0x77

    if-ne v0, v4, :cond_2

    .line 185
    iput-boolean v1, p0, Landroidx/media2/exoplayer/external/extractor/e/c;->i:Z

    return v3

    :cond_2
    if-ne v0, v2, :cond_3

    const/4 v1, 0x1

    .line 188
    :cond_3
    iput-boolean v1, p0, Landroidx/media2/exoplayer/external/extractor/e/c;->i:Z

    goto :goto_0

    :cond_4
    return v1
.end method

.method private c()V
    .locals 14

    .line 199
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/e/c;->b:Landroidx/media2/exoplayer/external/util/o;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/media2/exoplayer/external/util/o;->a(I)V

    .line 200
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/e/c;->b:Landroidx/media2/exoplayer/external/util/o;

    invoke-static {v0}, Landroidx/media2/exoplayer/external/audio/a;->a(Landroidx/media2/exoplayer/external/util/o;)Landroidx/media2/exoplayer/external/audio/a$a;

    move-result-object v0

    .line 201
    iget-object v1, p0, Landroidx/media2/exoplayer/external/extractor/e/c;->k:Landroidx/media2/exoplayer/external/Format;

    if-eqz v1, :cond_0

    iget v1, v0, Landroidx/media2/exoplayer/external/audio/a$a;->d:I

    iget-object v2, p0, Landroidx/media2/exoplayer/external/extractor/e/c;->k:Landroidx/media2/exoplayer/external/Format;

    iget v2, v2, Landroidx/media2/exoplayer/external/Format;->channelCount:I

    if-ne v1, v2, :cond_0

    iget v1, v0, Landroidx/media2/exoplayer/external/audio/a$a;->c:I

    iget-object v2, p0, Landroidx/media2/exoplayer/external/extractor/e/c;->k:Landroidx/media2/exoplayer/external/Format;

    iget v2, v2, Landroidx/media2/exoplayer/external/Format;->sampleRate:I

    if-ne v1, v2, :cond_0

    iget-object v1, v0, Landroidx/media2/exoplayer/external/audio/a$a;->a:Ljava/lang/String;

    iget-object v2, p0, Landroidx/media2/exoplayer/external/extractor/e/c;->k:Landroidx/media2/exoplayer/external/Format;

    iget-object v2, v2, Landroidx/media2/exoplayer/external/Format;->sampleMimeType:Ljava/lang/String;

    if-eq v1, v2, :cond_1

    .line 204
    :cond_0
    iget-object v3, p0, Landroidx/media2/exoplayer/external/extractor/e/c;->e:Ljava/lang/String;

    iget-object v4, v0, Landroidx/media2/exoplayer/external/audio/a$a;->a:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, -0x1

    iget v8, v0, Landroidx/media2/exoplayer/external/audio/a$a;->d:I

    iget v9, v0, Landroidx/media2/exoplayer/external/audio/a$a;->c:I

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    iget-object v13, p0, Landroidx/media2/exoplayer/external/extractor/e/c;->d:Ljava/lang/String;

    invoke-static/range {v3 .. v13}, Landroidx/media2/exoplayer/external/Format;->createAudioSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/util/List;Landroidx/media2/exoplayer/external/drm/DrmInitData;ILjava/lang/String;)Landroidx/media2/exoplayer/external/Format;

    move-result-object v1

    iput-object v1, p0, Landroidx/media2/exoplayer/external/extractor/e/c;->k:Landroidx/media2/exoplayer/external/Format;

    .line 207
    iget-object v2, p0, Landroidx/media2/exoplayer/external/extractor/e/c;->f:Landroidx/media2/exoplayer/external/extractor/q;

    invoke-interface {v2, v1}, Landroidx/media2/exoplayer/external/extractor/q;->a(Landroidx/media2/exoplayer/external/Format;)V

    .line 209
    :cond_1
    iget v1, v0, Landroidx/media2/exoplayer/external/audio/a$a;->e:I

    iput v1, p0, Landroidx/media2/exoplayer/external/extractor/e/c;->l:I

    const-wide/32 v1, 0xf4240

    .line 212
    iget v0, v0, Landroidx/media2/exoplayer/external/audio/a$a;->f:I

    int-to-long v3, v0

    mul-long v3, v3, v1

    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/e/c;->k:Landroidx/media2/exoplayer/external/Format;

    iget v0, v0, Landroidx/media2/exoplayer/external/Format;->sampleRate:I

    int-to-long v0, v0

    div-long/2addr v3, v0

    iput-wide v3, p0, Landroidx/media2/exoplayer/external/extractor/e/c;->j:J

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    const/4 v0, 0x0

    .line 96
    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/e/c;->g:I

    .line 97
    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/e/c;->h:I

    .line 98
    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/extractor/e/c;->i:Z

    return-void
.end method

.method public final a(JI)V
    .locals 0

    .line 110
    iput-wide p1, p0, Landroidx/media2/exoplayer/external/extractor/e/c;->a:J

    return-void
.end method

.method public final a(Landroidx/media2/exoplayer/external/extractor/i;Landroidx/media2/exoplayer/external/extractor/e/ah$d;)V
    .locals 1

    .line 103
    invoke-virtual {p2}, Landroidx/media2/exoplayer/external/extractor/e/ah$d;->a()V

    .line 104
    invoke-virtual {p2}, Landroidx/media2/exoplayer/external/extractor/e/ah$d;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/exoplayer/external/extractor/e/c;->e:Ljava/lang/String;

    .line 105
    invoke-virtual {p2}, Landroidx/media2/exoplayer/external/extractor/e/ah$d;->b()I

    move-result p2

    const/4 v0, 0x1

    invoke-interface {p1, p2, v0}, Landroidx/media2/exoplayer/external/extractor/i;->a(II)Landroidx/media2/exoplayer/external/extractor/q;

    move-result-object p1

    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/e/c;->f:Landroidx/media2/exoplayer/external/extractor/q;

    return-void
.end method

.method public final a(Landroidx/media2/exoplayer/external/util/p;)V
    .locals 10

    .line 115
    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/util/p;->b()I

    move-result v0

    if-lez v0, :cond_4

    .line 116
    iget v0, p0, Landroidx/media2/exoplayer/external/extractor/e/c;->g:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v0, :cond_3

    if-eq v0, v3, :cond_2

    if-eq v0, v2, :cond_1

    goto :goto_0

    .line 134
    :cond_1
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/util/p;->b()I

    move-result v0

    iget v2, p0, Landroidx/media2/exoplayer/external/extractor/e/c;->l:I

    iget v3, p0, Landroidx/media2/exoplayer/external/extractor/e/c;->h:I

    sub-int/2addr v2, v3

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 135
    iget-object v2, p0, Landroidx/media2/exoplayer/external/extractor/e/c;->f:Landroidx/media2/exoplayer/external/extractor/q;

    invoke-interface {v2, p1, v0}, Landroidx/media2/exoplayer/external/extractor/q;->a(Landroidx/media2/exoplayer/external/util/p;I)V

    .line 136
    iget v2, p0, Landroidx/media2/exoplayer/external/extractor/e/c;->h:I

    add-int/2addr v2, v0

    iput v2, p0, Landroidx/media2/exoplayer/external/extractor/e/c;->h:I

    .line 137
    iget v7, p0, Landroidx/media2/exoplayer/external/extractor/e/c;->l:I

    if-ne v2, v7, :cond_0

    .line 138
    iget-object v3, p0, Landroidx/media2/exoplayer/external/extractor/e/c;->f:Landroidx/media2/exoplayer/external/extractor/q;

    iget-wide v4, p0, Landroidx/media2/exoplayer/external/extractor/e/c;->a:J

    const/4 v6, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-interface/range {v3 .. v9}, Landroidx/media2/exoplayer/external/extractor/q;->a(JIIILandroidx/media2/exoplayer/external/extractor/q$a;)V

    .line 139
    iget-wide v2, p0, Landroidx/media2/exoplayer/external/extractor/e/c;->a:J

    iget-wide v4, p0, Landroidx/media2/exoplayer/external/extractor/e/c;->j:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Landroidx/media2/exoplayer/external/extractor/e/c;->a:J

    .line 140
    iput v1, p0, Landroidx/media2/exoplayer/external/extractor/e/c;->g:I

    goto :goto_0

    .line 126
    :cond_2
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/e/c;->c:Landroidx/media2/exoplayer/external/util/p;

    iget-object v0, v0, Landroidx/media2/exoplayer/external/util/p;->a:[B

    invoke-direct {p0, p1, v0}, Landroidx/media2/exoplayer/external/extractor/e/c;->a(Landroidx/media2/exoplayer/external/util/p;[B)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/extractor/e/c;->c()V

    .line 128
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/e/c;->c:Landroidx/media2/exoplayer/external/util/p;

    invoke-virtual {v0, v1}, Landroidx/media2/exoplayer/external/util/p;->c(I)V

    .line 129
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/e/c;->f:Landroidx/media2/exoplayer/external/extractor/q;

    iget-object v1, p0, Landroidx/media2/exoplayer/external/extractor/e/c;->c:Landroidx/media2/exoplayer/external/util/p;

    const/16 v3, 0x80

    invoke-interface {v0, v1, v3}, Landroidx/media2/exoplayer/external/extractor/q;->a(Landroidx/media2/exoplayer/external/util/p;I)V

    .line 130
    iput v2, p0, Landroidx/media2/exoplayer/external/extractor/e/c;->g:I

    goto :goto_0

    .line 118
    :cond_3
    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/extractor/e/c;->b(Landroidx/media2/exoplayer/external/util/p;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    iput v3, p0, Landroidx/media2/exoplayer/external/extractor/e/c;->g:I

    .line 120
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/e/c;->c:Landroidx/media2/exoplayer/external/util/p;

    iget-object v0, v0, Landroidx/media2/exoplayer/external/util/p;->a:[B

    const/16 v4, 0xb

    aput-byte v4, v0, v1

    .line 121
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/e/c;->c:Landroidx/media2/exoplayer/external/util/p;

    iget-object v0, v0, Landroidx/media2/exoplayer/external/util/p;->a:[B

    const/16 v1, 0x77

    aput-byte v1, v0, v3

    .line 122
    iput v2, p0, Landroidx/media2/exoplayer/external/extractor/e/c;->h:I

    goto :goto_0

    :cond_4
    return-void
.end method

.method public final b()V
    .locals 0

    return-void
.end method

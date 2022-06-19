.class public final Landroidx/media2/exoplayer/external/extractor/e/f;
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

.field private j:Z

.field private k:J

.field private l:Landroidx/media2/exoplayer/external/Format;

.field private m:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 77
    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/extractor/e/f;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    new-instance v0, Landroidx/media2/exoplayer/external/util/o;

    const/16 v1, 0x10

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Landroidx/media2/exoplayer/external/util/o;-><init>([B)V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/extractor/e/f;->b:Landroidx/media2/exoplayer/external/util/o;

    .line 87
    new-instance v1, Landroidx/media2/exoplayer/external/util/p;

    iget-object v0, v0, Landroidx/media2/exoplayer/external/util/o;->a:[B

    invoke-direct {v1, v0}, Landroidx/media2/exoplayer/external/util/p;-><init>([B)V

    iput-object v1, p0, Landroidx/media2/exoplayer/external/extractor/e/f;->c:Landroidx/media2/exoplayer/external/util/p;

    const/4 v0, 0x0

    .line 88
    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/e/f;->g:I

    .line 89
    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/e/f;->h:I

    .line 90
    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/extractor/e/f;->i:Z

    .line 91
    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/extractor/e/f;->j:Z

    .line 92
    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/e/f;->d:Ljava/lang/String;

    return-void
.end method

.method private a(Landroidx/media2/exoplayer/external/util/p;[B)Z
    .locals 3

    .line 166
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/util/p;->b()I

    move-result v0

    iget v1, p0, Landroidx/media2/exoplayer/external/extractor/e/f;->h:I

    const/16 v2, 0x10

    rsub-int/lit8 v1, v1, 0x10

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 167
    iget v1, p0, Landroidx/media2/exoplayer/external/extractor/e/f;->h:I

    invoke-virtual {p1, p2, v1, v0}, Landroidx/media2/exoplayer/external/util/p;->a([BII)V

    .line 168
    iget p1, p0, Landroidx/media2/exoplayer/external/extractor/e/f;->h:I

    add-int/2addr p1, v0

    iput p1, p0, Landroidx/media2/exoplayer/external/extractor/e/f;->h:I

    if-ne p1, v2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private b(Landroidx/media2/exoplayer/external/util/p;)Z
    .locals 5

    .line 180
    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/util/p;->b()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_6

    .line 181
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/extractor/e/f;->i:Z

    const/16 v2, 0xac

    const/4 v3, 0x1

    if-nez v0, :cond_2

    .line 182
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/util/p;->c()I

    move-result v0

    if-ne v0, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    iput-boolean v1, p0, Landroidx/media2/exoplayer/external/extractor/e/f;->i:Z

    goto :goto_0

    .line 185
    :cond_2
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/util/p;->c()I

    move-result v0

    if-ne v0, v2, :cond_3

    const/4 v2, 0x1

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    .line 186
    :goto_1
    iput-boolean v2, p0, Landroidx/media2/exoplayer/external/extractor/e/f;->i:Z

    const/16 v2, 0x40

    const/16 v4, 0x41

    if-eq v0, v2, :cond_4

    if-ne v0, v4, :cond_0

    :cond_4
    if-ne v0, v4, :cond_5

    const/4 v1, 0x1

    .line 188
    :cond_5
    iput-boolean v1, p0, Landroidx/media2/exoplayer/external/extractor/e/f;->j:Z

    return v3

    :cond_6
    return v1
.end method

.method private c()V
    .locals 13

    .line 198
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/e/f;->b:Landroidx/media2/exoplayer/external/util/o;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/media2/exoplayer/external/util/o;->a(I)V

    .line 199
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/e/f;->b:Landroidx/media2/exoplayer/external/util/o;

    invoke-static {v0}, Landroidx/media2/exoplayer/external/audio/b;->a(Landroidx/media2/exoplayer/external/util/o;)Landroidx/media2/exoplayer/external/audio/b$a;

    move-result-object v0

    .line 200
    iget-object v1, p0, Landroidx/media2/exoplayer/external/extractor/e/f;->l:Landroidx/media2/exoplayer/external/Format;

    if-eqz v1, :cond_0

    iget v1, v0, Landroidx/media2/exoplayer/external/audio/b$a;->c:I

    iget-object v2, p0, Landroidx/media2/exoplayer/external/extractor/e/f;->l:Landroidx/media2/exoplayer/external/Format;

    iget v2, v2, Landroidx/media2/exoplayer/external/Format;->channelCount:I

    if-ne v1, v2, :cond_0

    iget v1, v0, Landroidx/media2/exoplayer/external/audio/b$a;->b:I

    iget-object v2, p0, Landroidx/media2/exoplayer/external/extractor/e/f;->l:Landroidx/media2/exoplayer/external/Format;

    iget v2, v2, Landroidx/media2/exoplayer/external/Format;->sampleRate:I

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Landroidx/media2/exoplayer/external/extractor/e/f;->l:Landroidx/media2/exoplayer/external/Format;

    iget-object v1, v1, Landroidx/media2/exoplayer/external/Format;->sampleMimeType:Ljava/lang/String;

    const-string v2, "audio/ac4"

    .line 203
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 204
    :cond_0
    iget-object v2, p0, Landroidx/media2/exoplayer/external/extractor/e/f;->e:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, -0x1

    iget v7, v0, Landroidx/media2/exoplayer/external/audio/b$a;->c:I

    iget v8, v0, Landroidx/media2/exoplayer/external/audio/b$a;->b:I

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    iget-object v12, p0, Landroidx/media2/exoplayer/external/extractor/e/f;->d:Ljava/lang/String;

    const-string v3, "audio/ac4"

    .line 205
    invoke-static/range {v2 .. v12}, Landroidx/media2/exoplayer/external/Format;->createAudioSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/util/List;Landroidx/media2/exoplayer/external/drm/DrmInitData;ILjava/lang/String;)Landroidx/media2/exoplayer/external/Format;

    move-result-object v1

    iput-object v1, p0, Landroidx/media2/exoplayer/external/extractor/e/f;->l:Landroidx/media2/exoplayer/external/Format;

    .line 217
    iget-object v2, p0, Landroidx/media2/exoplayer/external/extractor/e/f;->f:Landroidx/media2/exoplayer/external/extractor/q;

    invoke-interface {v2, v1}, Landroidx/media2/exoplayer/external/extractor/q;->a(Landroidx/media2/exoplayer/external/Format;)V

    .line 219
    :cond_1
    iget v1, v0, Landroidx/media2/exoplayer/external/audio/b$a;->d:I

    iput v1, p0, Landroidx/media2/exoplayer/external/extractor/e/f;->m:I

    const-wide/32 v1, 0xf4240

    .line 222
    iget v0, v0, Landroidx/media2/exoplayer/external/audio/b$a;->e:I

    int-to-long v3, v0

    mul-long v3, v3, v1

    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/e/f;->l:Landroidx/media2/exoplayer/external/Format;

    iget v0, v0, Landroidx/media2/exoplayer/external/Format;->sampleRate:I

    int-to-long v0, v0

    div-long/2addr v3, v0

    iput-wide v3, p0, Landroidx/media2/exoplayer/external/extractor/e/f;->k:J

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    const/4 v0, 0x0

    .line 97
    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/e/f;->g:I

    .line 98
    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/e/f;->h:I

    .line 99
    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/extractor/e/f;->i:Z

    .line 100
    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/extractor/e/f;->j:Z

    return-void
.end method

.method public final a(JI)V
    .locals 0

    .line 112
    iput-wide p1, p0, Landroidx/media2/exoplayer/external/extractor/e/f;->a:J

    return-void
.end method

.method public final a(Landroidx/media2/exoplayer/external/extractor/i;Landroidx/media2/exoplayer/external/extractor/e/ah$d;)V
    .locals 1

    .line 105
    invoke-virtual {p2}, Landroidx/media2/exoplayer/external/extractor/e/ah$d;->a()V

    .line 106
    invoke-virtual {p2}, Landroidx/media2/exoplayer/external/extractor/e/ah$d;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/exoplayer/external/extractor/e/f;->e:Ljava/lang/String;

    .line 107
    invoke-virtual {p2}, Landroidx/media2/exoplayer/external/extractor/e/ah$d;->b()I

    move-result p2

    const/4 v0, 0x1

    invoke-interface {p1, p2, v0}, Landroidx/media2/exoplayer/external/extractor/i;->a(II)Landroidx/media2/exoplayer/external/extractor/q;

    move-result-object p1

    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/e/f;->f:Landroidx/media2/exoplayer/external/extractor/q;

    return-void
.end method

.method public final a(Landroidx/media2/exoplayer/external/util/p;)V
    .locals 10

    .line 117
    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/util/p;->b()I

    move-result v0

    if-lez v0, :cond_5

    .line 118
    iget v0, p0, Landroidx/media2/exoplayer/external/extractor/e/f;->g:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v0, :cond_3

    if-eq v0, v3, :cond_2

    if-eq v0, v2, :cond_1

    goto :goto_0

    .line 136
    :cond_1
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/util/p;->b()I

    move-result v0

    iget v2, p0, Landroidx/media2/exoplayer/external/extractor/e/f;->m:I

    iget v3, p0, Landroidx/media2/exoplayer/external/extractor/e/f;->h:I

    sub-int/2addr v2, v3

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 137
    iget-object v2, p0, Landroidx/media2/exoplayer/external/extractor/e/f;->f:Landroidx/media2/exoplayer/external/extractor/q;

    invoke-interface {v2, p1, v0}, Landroidx/media2/exoplayer/external/extractor/q;->a(Landroidx/media2/exoplayer/external/util/p;I)V

    .line 138
    iget v2, p0, Landroidx/media2/exoplayer/external/extractor/e/f;->h:I

    add-int/2addr v2, v0

    iput v2, p0, Landroidx/media2/exoplayer/external/extractor/e/f;->h:I

    .line 139
    iget v7, p0, Landroidx/media2/exoplayer/external/extractor/e/f;->m:I

    if-ne v2, v7, :cond_0

    .line 140
    iget-object v3, p0, Landroidx/media2/exoplayer/external/extractor/e/f;->f:Landroidx/media2/exoplayer/external/extractor/q;

    iget-wide v4, p0, Landroidx/media2/exoplayer/external/extractor/e/f;->a:J

    const/4 v6, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-interface/range {v3 .. v9}, Landroidx/media2/exoplayer/external/extractor/q;->a(JIIILandroidx/media2/exoplayer/external/extractor/q$a;)V

    .line 141
    iget-wide v2, p0, Landroidx/media2/exoplayer/external/extractor/e/f;->a:J

    iget-wide v4, p0, Landroidx/media2/exoplayer/external/extractor/e/f;->k:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Landroidx/media2/exoplayer/external/extractor/e/f;->a:J

    .line 142
    iput v1, p0, Landroidx/media2/exoplayer/external/extractor/e/f;->g:I

    goto :goto_0

    .line 128
    :cond_2
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/e/f;->c:Landroidx/media2/exoplayer/external/util/p;

    iget-object v0, v0, Landroidx/media2/exoplayer/external/util/p;->a:[B

    invoke-direct {p0, p1, v0}, Landroidx/media2/exoplayer/external/extractor/e/f;->a(Landroidx/media2/exoplayer/external/util/p;[B)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/extractor/e/f;->c()V

    .line 130
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/e/f;->c:Landroidx/media2/exoplayer/external/util/p;

    invoke-virtual {v0, v1}, Landroidx/media2/exoplayer/external/util/p;->c(I)V

    .line 131
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/e/f;->f:Landroidx/media2/exoplayer/external/extractor/q;

    iget-object v1, p0, Landroidx/media2/exoplayer/external/extractor/e/f;->c:Landroidx/media2/exoplayer/external/util/p;

    const/16 v3, 0x10

    invoke-interface {v0, v1, v3}, Landroidx/media2/exoplayer/external/extractor/q;->a(Landroidx/media2/exoplayer/external/util/p;I)V

    .line 132
    iput v2, p0, Landroidx/media2/exoplayer/external/extractor/e/f;->g:I

    goto :goto_0

    .line 120
    :cond_3
    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/extractor/e/f;->b(Landroidx/media2/exoplayer/external/util/p;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    iput v3, p0, Landroidx/media2/exoplayer/external/extractor/e/f;->g:I

    .line 122
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/e/f;->c:Landroidx/media2/exoplayer/external/util/p;

    iget-object v0, v0, Landroidx/media2/exoplayer/external/util/p;->a:[B

    const/16 v4, -0x54

    aput-byte v4, v0, v1

    .line 123
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/e/f;->c:Landroidx/media2/exoplayer/external/util/p;

    iget-object v0, v0, Landroidx/media2/exoplayer/external/util/p;->a:[B

    iget-boolean v1, p0, Landroidx/media2/exoplayer/external/extractor/e/f;->j:Z

    if-eqz v1, :cond_4

    const/16 v1, 0x41

    goto :goto_1

    :cond_4
    const/16 v1, 0x40

    :goto_1
    int-to-byte v1, v1

    aput-byte v1, v0, v3

    .line 124
    iput v2, p0, Landroidx/media2/exoplayer/external/extractor/e/f;->h:I

    goto/16 :goto_0

    :cond_5
    return-void
.end method

.method public final b()V
    .locals 0

    return-void
.end method

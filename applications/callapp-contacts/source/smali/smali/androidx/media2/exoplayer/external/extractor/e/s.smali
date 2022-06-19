.class public final Landroidx/media2/exoplayer/external/extractor/e/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media2/exoplayer/external/extractor/e/m;


# instance fields
.field private final a:Landroidx/media2/exoplayer/external/util/p;

.field private final b:Landroidx/media2/exoplayer/external/extractor/m;

.field private final c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Landroidx/media2/exoplayer/external/extractor/q;

.field private f:I

.field private g:I

.field private h:Z

.field private i:Z

.field private j:J

.field private k:I

.field private l:J


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 65
    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/extractor/e/s;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 69
    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/e/s;->f:I

    .line 71
    new-instance v1, Landroidx/media2/exoplayer/external/util/p;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Landroidx/media2/exoplayer/external/util/p;-><init>(I)V

    iput-object v1, p0, Landroidx/media2/exoplayer/external/extractor/e/s;->a:Landroidx/media2/exoplayer/external/util/p;

    .line 72
    iget-object v1, v1, Landroidx/media2/exoplayer/external/util/p;->a:[B

    const/4 v2, -0x1

    aput-byte v2, v1, v0

    .line 73
    new-instance v0, Landroidx/media2/exoplayer/external/extractor/m;

    invoke-direct {v0}, Landroidx/media2/exoplayer/external/extractor/m;-><init>()V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/extractor/e/s;->b:Landroidx/media2/exoplayer/external/extractor/m;

    .line 74
    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/e/s;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    const/4 v0, 0x0

    .line 79
    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/e/s;->f:I

    .line 80
    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/e/s;->g:I

    .line 81
    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/extractor/e/s;->i:Z

    return-void
.end method

.method public final a(JI)V
    .locals 0

    .line 93
    iput-wide p1, p0, Landroidx/media2/exoplayer/external/extractor/e/s;->l:J

    return-void
.end method

.method public final a(Landroidx/media2/exoplayer/external/extractor/i;Landroidx/media2/exoplayer/external/extractor/e/ah$d;)V
    .locals 1

    .line 86
    invoke-virtual {p2}, Landroidx/media2/exoplayer/external/extractor/e/ah$d;->a()V

    .line 87
    invoke-virtual {p2}, Landroidx/media2/exoplayer/external/extractor/e/ah$d;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/exoplayer/external/extractor/e/s;->d:Ljava/lang/String;

    .line 88
    invoke-virtual {p2}, Landroidx/media2/exoplayer/external/extractor/e/ah$d;->b()I

    move-result p2

    const/4 v0, 0x1

    invoke-interface {p1, p2, v0}, Landroidx/media2/exoplayer/external/extractor/i;->a(II)Landroidx/media2/exoplayer/external/extractor/q;

    move-result-object p1

    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/e/s;->e:Landroidx/media2/exoplayer/external/extractor/q;

    return-void
.end method

.method public final a(Landroidx/media2/exoplayer/external/util/p;)V
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 98
    :cond_0
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroidx/media2/exoplayer/external/util/p;->b()I

    move-result v2

    if-lez v2, :cond_a

    .line 99
    iget v2, v0, Landroidx/media2/exoplayer/external/extractor/e/s;->f:I

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v2, :cond_5

    if-eq v2, v5, :cond_2

    if-ne v2, v3, :cond_1

    .line 3215
    invoke-virtual/range {p1 .. p1}, Landroidx/media2/exoplayer/external/util/p;->b()I

    move-result v2

    iget v3, v0, Landroidx/media2/exoplayer/external/extractor/e/s;->k:I

    iget v5, v0, Landroidx/media2/exoplayer/external/extractor/e/s;->g:I

    sub-int/2addr v3, v5

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 3216
    iget-object v3, v0, Landroidx/media2/exoplayer/external/extractor/e/s;->e:Landroidx/media2/exoplayer/external/extractor/q;

    invoke-interface {v3, v1, v2}, Landroidx/media2/exoplayer/external/extractor/q;->a(Landroidx/media2/exoplayer/external/util/p;I)V

    .line 3217
    iget v3, v0, Landroidx/media2/exoplayer/external/extractor/e/s;->g:I

    add-int/2addr v3, v2

    iput v3, v0, Landroidx/media2/exoplayer/external/extractor/e/s;->g:I

    .line 3218
    iget v9, v0, Landroidx/media2/exoplayer/external/extractor/e/s;->k:I

    if-lt v3, v9, :cond_0

    .line 3223
    iget-object v5, v0, Landroidx/media2/exoplayer/external/extractor/e/s;->e:Landroidx/media2/exoplayer/external/extractor/q;

    iget-wide v6, v0, Landroidx/media2/exoplayer/external/extractor/e/s;->l:J

    const/4 v8, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-interface/range {v5 .. v11}, Landroidx/media2/exoplayer/external/extractor/q;->a(JIIILandroidx/media2/exoplayer/external/extractor/q$a;)V

    .line 3224
    iget-wide v2, v0, Landroidx/media2/exoplayer/external/extractor/e/s;->l:J

    iget-wide v5, v0, Landroidx/media2/exoplayer/external/extractor/e/s;->j:J

    add-long/2addr v2, v5

    iput-wide v2, v0, Landroidx/media2/exoplayer/external/extractor/e/s;->l:J

    .line 3225
    iput v4, v0, Landroidx/media2/exoplayer/external/extractor/e/s;->g:I

    .line 3226
    iput v4, v0, Landroidx/media2/exoplayer/external/extractor/e/s;->f:I

    goto :goto_0

    .line 110
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 3170
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroidx/media2/exoplayer/external/util/p;->b()I

    move-result v2

    iget v6, v0, Landroidx/media2/exoplayer/external/extractor/e/s;->g:I

    const/4 v7, 0x4

    rsub-int/lit8 v6, v6, 0x4

    invoke-static {v2, v6}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 3171
    iget-object v6, v0, Landroidx/media2/exoplayer/external/extractor/e/s;->a:Landroidx/media2/exoplayer/external/util/p;

    iget-object v6, v6, Landroidx/media2/exoplayer/external/util/p;->a:[B

    iget v8, v0, Landroidx/media2/exoplayer/external/extractor/e/s;->g:I

    invoke-virtual {v1, v6, v8, v2}, Landroidx/media2/exoplayer/external/util/p;->a([BII)V

    .line 3172
    iget v6, v0, Landroidx/media2/exoplayer/external/extractor/e/s;->g:I

    add-int/2addr v6, v2

    iput v6, v0, Landroidx/media2/exoplayer/external/extractor/e/s;->g:I

    if-lt v6, v7, :cond_0

    .line 3178
    iget-object v2, v0, Landroidx/media2/exoplayer/external/extractor/e/s;->a:Landroidx/media2/exoplayer/external/util/p;

    invoke-virtual {v2, v4}, Landroidx/media2/exoplayer/external/util/p;->c(I)V

    .line 3179
    iget-object v2, v0, Landroidx/media2/exoplayer/external/extractor/e/s;->a:Landroidx/media2/exoplayer/external/util/p;

    invoke-virtual {v2}, Landroidx/media2/exoplayer/external/util/p;->i()I

    move-result v2

    iget-object v6, v0, Landroidx/media2/exoplayer/external/extractor/e/s;->b:Landroidx/media2/exoplayer/external/extractor/m;

    invoke-static {v2, v6}, Landroidx/media2/exoplayer/external/extractor/m;->a(ILandroidx/media2/exoplayer/external/extractor/m;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 3182
    iput v4, v0, Landroidx/media2/exoplayer/external/extractor/e/s;->g:I

    .line 3183
    iput v5, v0, Landroidx/media2/exoplayer/external/extractor/e/s;->f:I

    goto :goto_0

    .line 3187
    :cond_3
    iget-object v2, v0, Landroidx/media2/exoplayer/external/extractor/e/s;->b:Landroidx/media2/exoplayer/external/extractor/m;

    iget v2, v2, Landroidx/media2/exoplayer/external/extractor/m;->c:I

    iput v2, v0, Landroidx/media2/exoplayer/external/extractor/e/s;->k:I

    .line 3188
    iget-boolean v2, v0, Landroidx/media2/exoplayer/external/extractor/e/s;->h:Z

    if-nez v2, :cond_4

    const-wide/32 v8, 0xf4240

    .line 3189
    iget-object v2, v0, Landroidx/media2/exoplayer/external/extractor/e/s;->b:Landroidx/media2/exoplayer/external/extractor/m;

    iget v2, v2, Landroidx/media2/exoplayer/external/extractor/m;->g:I

    int-to-long v10, v2

    mul-long v10, v10, v8

    iget-object v2, v0, Landroidx/media2/exoplayer/external/extractor/e/s;->b:Landroidx/media2/exoplayer/external/extractor/m;

    iget v2, v2, Landroidx/media2/exoplayer/external/extractor/m;->d:I

    int-to-long v8, v2

    div-long/2addr v10, v8

    iput-wide v10, v0, Landroidx/media2/exoplayer/external/extractor/e/s;->j:J

    .line 3190
    iget-object v12, v0, Landroidx/media2/exoplayer/external/extractor/e/s;->d:Ljava/lang/String;

    iget-object v2, v0, Landroidx/media2/exoplayer/external/extractor/e/s;->b:Landroidx/media2/exoplayer/external/extractor/m;

    iget-object v13, v2, Landroidx/media2/exoplayer/external/extractor/m;->b:Ljava/lang/String;

    const/4 v14, 0x0

    const/4 v15, -0x1

    const/16 v16, 0x1000

    iget-object v2, v0, Landroidx/media2/exoplayer/external/extractor/e/s;->b:Landroidx/media2/exoplayer/external/extractor/m;

    iget v2, v2, Landroidx/media2/exoplayer/external/extractor/m;->e:I

    iget-object v6, v0, Landroidx/media2/exoplayer/external/extractor/e/s;->b:Landroidx/media2/exoplayer/external/extractor/m;

    iget v6, v6, Landroidx/media2/exoplayer/external/extractor/m;->d:I

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    iget-object v8, v0, Landroidx/media2/exoplayer/external/extractor/e/s;->c:Ljava/lang/String;

    move/from16 v17, v2

    move/from16 v18, v6

    move-object/from16 v22, v8

    invoke-static/range {v12 .. v22}, Landroidx/media2/exoplayer/external/Format;->createAudioSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/util/List;Landroidx/media2/exoplayer/external/drm/DrmInitData;ILjava/lang/String;)Landroidx/media2/exoplayer/external/Format;

    move-result-object v2

    .line 3193
    iget-object v6, v0, Landroidx/media2/exoplayer/external/extractor/e/s;->e:Landroidx/media2/exoplayer/external/extractor/q;

    invoke-interface {v6, v2}, Landroidx/media2/exoplayer/external/extractor/q;->a(Landroidx/media2/exoplayer/external/Format;)V

    .line 3194
    iput-boolean v5, v0, Landroidx/media2/exoplayer/external/extractor/e/s;->h:Z

    .line 3197
    :cond_4
    iget-object v2, v0, Landroidx/media2/exoplayer/external/extractor/e/s;->a:Landroidx/media2/exoplayer/external/util/p;

    invoke-virtual {v2, v4}, Landroidx/media2/exoplayer/external/util/p;->c(I)V

    .line 3198
    iget-object v2, v0, Landroidx/media2/exoplayer/external/extractor/e/s;->e:Landroidx/media2/exoplayer/external/extractor/q;

    iget-object v4, v0, Landroidx/media2/exoplayer/external/extractor/e/s;->a:Landroidx/media2/exoplayer/external/util/p;

    invoke-interface {v2, v4, v7}, Landroidx/media2/exoplayer/external/extractor/q;->a(Landroidx/media2/exoplayer/external/util/p;I)V

    .line 3199
    iput v3, v0, Landroidx/media2/exoplayer/external/extractor/e/s;->f:I

    goto/16 :goto_0

    .line 1133
    :cond_5
    iget-object v2, v1, Landroidx/media2/exoplayer/external/util/p;->a:[B

    .line 2142
    iget v6, v1, Landroidx/media2/exoplayer/external/util/p;->b:I

    .line 3125
    iget v7, v1, Landroidx/media2/exoplayer/external/util/p;->c:I

    :goto_1
    if-ge v6, v7, :cond_9

    .line 1137
    aget-byte v8, v2, v6

    const/16 v9, 0xff

    and-int/2addr v8, v9

    if-ne v8, v9, :cond_6

    const/4 v8, 0x1

    goto :goto_2

    :cond_6
    const/4 v8, 0x0

    .line 1138
    :goto_2
    iget-boolean v9, v0, Landroidx/media2/exoplayer/external/extractor/e/s;->i:Z

    if-eqz v9, :cond_7

    aget-byte v9, v2, v6

    const/16 v10, 0xe0

    and-int/2addr v9, v10

    if-ne v9, v10, :cond_7

    const/4 v9, 0x1

    goto :goto_3

    :cond_7
    const/4 v9, 0x0

    .line 1139
    :goto_3
    iput-boolean v8, v0, Landroidx/media2/exoplayer/external/extractor/e/s;->i:Z

    if-eqz v9, :cond_8

    add-int/lit8 v7, v6, 0x1

    .line 1141
    invoke-virtual {v1, v7}, Landroidx/media2/exoplayer/external/util/p;->c(I)V

    .line 1143
    iput-boolean v4, v0, Landroidx/media2/exoplayer/external/extractor/e/s;->i:Z

    .line 1144
    iget-object v4, v0, Landroidx/media2/exoplayer/external/extractor/e/s;->a:Landroidx/media2/exoplayer/external/util/p;

    iget-object v4, v4, Landroidx/media2/exoplayer/external/util/p;->a:[B

    aget-byte v2, v2, v6

    aput-byte v2, v4, v5

    .line 1145
    iput v3, v0, Landroidx/media2/exoplayer/external/extractor/e/s;->g:I

    .line 1146
    iput v5, v0, Landroidx/media2/exoplayer/external/extractor/e/s;->f:I

    goto/16 :goto_0

    :cond_8
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 1150
    :cond_9
    invoke-virtual {v1, v7}, Landroidx/media2/exoplayer/external/util/p;->c(I)V

    goto/16 :goto_0

    :cond_a
    return-void
.end method

.method public final b()V
    .locals 0

    return-void
.end method

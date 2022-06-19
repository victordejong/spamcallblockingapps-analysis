.class public final Landroidx/media2/exoplayer/external/extractor/f/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media2/exoplayer/external/extractor/g;


# static fields
.field public static final a:Landroidx/media2/exoplayer/external/extractor/j;


# instance fields
.field private b:Landroidx/media2/exoplayer/external/extractor/i;

.field private c:Landroidx/media2/exoplayer/external/extractor/q;

.field private d:Landroidx/media2/exoplayer/external/extractor/f/c;

.field private e:I

.field private f:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 43
    sget-object v0, Landroidx/media2/exoplayer/external/extractor/f/b;->a:Landroidx/media2/exoplayer/external/extractor/j;

    sput-object v0, Landroidx/media2/exoplayer/external/extractor/f/a;->a:Landroidx/media2/exoplayer/external/extractor/j;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static final synthetic a()[Landroidx/media2/exoplayer/external/extractor/g;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Landroidx/media2/exoplayer/external/extractor/g;

    .line 43
    new-instance v1, Landroidx/media2/exoplayer/external/extractor/f/a;

    invoke-direct {v1}, Landroidx/media2/exoplayer/external/extractor/f/a;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method


# virtual methods
.method public final a(Landroidx/media2/exoplayer/external/extractor/h;Landroidx/media2/exoplayer/external/extractor/n;)I
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 80
    iget-object v2, v0, Landroidx/media2/exoplayer/external/extractor/f/a;->d:Landroidx/media2/exoplayer/external/extractor/f/c;

    if-nez v2, :cond_1

    .line 81
    invoke-static/range {p1 .. p1}, Landroidx/media2/exoplayer/external/extractor/f/d;->a(Landroidx/media2/exoplayer/external/extractor/h;)Landroidx/media2/exoplayer/external/extractor/f/c;

    move-result-object v2

    iput-object v2, v0, Landroidx/media2/exoplayer/external/extractor/f/a;->d:Landroidx/media2/exoplayer/external/extractor/f/c;

    if-eqz v2, :cond_0

    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 1155
    iget v4, v2, Landroidx/media2/exoplayer/external/extractor/f/c;->b:I

    iget v6, v2, Landroidx/media2/exoplayer/external/extractor/f/c;->d:I

    mul-int v4, v4, v6

    iget v2, v2, Landroidx/media2/exoplayer/external/extractor/f/c;->a:I

    mul-int v6, v4, v2

    const v7, 0x8000

    .line 87
    iget-object v2, v0, Landroidx/media2/exoplayer/external/extractor/f/a;->d:Landroidx/media2/exoplayer/external/extractor/f/c;

    .line 1165
    iget v8, v2, Landroidx/media2/exoplayer/external/extractor/f/c;->a:I

    .line 87
    iget-object v2, v0, Landroidx/media2/exoplayer/external/extractor/f/a;->d:Landroidx/media2/exoplayer/external/extractor/f/c;

    .line 2160
    iget v9, v2, Landroidx/media2/exoplayer/external/extractor/f/c;->b:I

    .line 88
    iget-object v2, v0, Landroidx/media2/exoplayer/external/extractor/f/a;->d:Landroidx/media2/exoplayer/external/extractor/f/c;

    .line 2170
    iget v10, v2, Landroidx/media2/exoplayer/external/extractor/f/c;->e:I

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const-string v4, "audio/raw"

    .line 86
    invoke-static/range {v3 .. v14}, Landroidx/media2/exoplayer/external/Format;->createAudioSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIILjava/util/List;Landroidx/media2/exoplayer/external/drm/DrmInitData;ILjava/lang/String;)Landroidx/media2/exoplayer/external/Format;

    move-result-object v2

    .line 89
    iget-object v3, v0, Landroidx/media2/exoplayer/external/extractor/f/a;->c:Landroidx/media2/exoplayer/external/extractor/q;

    invoke-interface {v3, v2}, Landroidx/media2/exoplayer/external/extractor/q;->a(Landroidx/media2/exoplayer/external/Format;)V

    .line 90
    iget-object v2, v0, Landroidx/media2/exoplayer/external/extractor/f/a;->d:Landroidx/media2/exoplayer/external/extractor/f/c;

    .line 3150
    iget v2, v2, Landroidx/media2/exoplayer/external/extractor/f/c;->c:I

    .line 90
    iput v2, v0, Landroidx/media2/exoplayer/external/extractor/f/a;->e:I

    goto :goto_0

    .line 84
    :cond_0
    new-instance v1, Landroidx/media2/exoplayer/external/ParserException;

    const-string v2, "Unsupported or unrecognized wav header."

    invoke-direct {v1, v2}, Landroidx/media2/exoplayer/external/ParserException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 93
    :cond_1
    :goto_0
    iget-object v2, v0, Landroidx/media2/exoplayer/external/extractor/f/a;->d:Landroidx/media2/exoplayer/external/extractor/f/c;

    .line 4100
    iget v2, v2, Landroidx/media2/exoplayer/external/extractor/f/c;->f:I

    const/4 v5, -0x1

    if-eq v2, v5, :cond_2

    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    const-wide/16 v6, -0x1

    if-nez v2, :cond_8

    .line 94
    iget-object v2, v0, Landroidx/media2/exoplayer/external/extractor/f/a;->d:Landroidx/media2/exoplayer/external/extractor/f/c;

    .line 4123
    invoke-static/range {p1 .. p1}, Landroidx/media2/exoplayer/external/util/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4124
    invoke-static {v2}, Landroidx/media2/exoplayer/external/util/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4127
    invoke-interface/range {p1 .. p1}, Landroidx/media2/exoplayer/external/extractor/h;->a()V

    .line 4129
    new-instance v10, Landroidx/media2/exoplayer/external/util/p;

    const/16 v11, 0x8

    invoke-direct {v10, v11}, Landroidx/media2/exoplayer/external/util/p;-><init>(I)V

    .line 4131
    invoke-static {v1, v10}, Landroidx/media2/exoplayer/external/extractor/f/d$a;->a(Landroidx/media2/exoplayer/external/extractor/h;Landroidx/media2/exoplayer/external/util/p;)Landroidx/media2/exoplayer/external/extractor/f/d$a;

    move-result-object v12

    .line 4132
    :goto_2
    iget v13, v12, Landroidx/media2/exoplayer/external/extractor/f/d$a;->a:I

    const v14, 0x64617461

    const-string v15, "WavHeaderReader"

    if-eq v13, v14, :cond_6

    .line 4133
    iget v13, v12, Landroidx/media2/exoplayer/external/extractor/f/d$a;->a:I

    const v14, 0x52494646

    if-eq v13, v14, :cond_3

    iget v13, v12, Landroidx/media2/exoplayer/external/extractor/f/d$a;->a:I

    const v4, 0x666d7420

    if-eq v13, v4, :cond_3

    .line 4134
    iget v4, v12, Landroidx/media2/exoplayer/external/extractor/f/d$a;->a:I

    const/16 v13, 0x27

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v13}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v13, "Ignoring unknown WAV chunk: "

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v15, v3}, Landroidx/media2/exoplayer/external/util/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    const-wide/16 v3, 0x8

    .line 4136
    iget-wide v8, v12, Landroidx/media2/exoplayer/external/extractor/f/d$a;->b:J

    add-long/2addr v8, v3

    .line 4138
    iget v3, v12, Landroidx/media2/exoplayer/external/extractor/f/d$a;->a:I

    if-ne v3, v14, :cond_4

    const-wide/16 v8, 0xc

    :cond_4
    const-wide/32 v3, 0x7fffffff

    cmp-long v13, v8, v3

    if-gtz v13, :cond_5

    long-to-int v3, v8

    .line 4144
    invoke-interface {v1, v3}, Landroidx/media2/exoplayer/external/extractor/h;->b(I)V

    .line 4145
    invoke-static {v1, v10}, Landroidx/media2/exoplayer/external/extractor/f/d$a;->a(Landroidx/media2/exoplayer/external/extractor/h;Landroidx/media2/exoplayer/external/util/p;)Landroidx/media2/exoplayer/external/extractor/f/d$a;

    move-result-object v12

    goto :goto_2

    .line 4142
    :cond_5
    new-instance v1, Landroidx/media2/exoplayer/external/ParserException;

    iget v2, v12, Landroidx/media2/exoplayer/external/extractor/f/d$a;->a:I

    const/16 v3, 0x33

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Chunk is too large (~2GB+) to skip; id: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/media2/exoplayer/external/ParserException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4148
    :cond_6
    invoke-interface {v1, v11}, Landroidx/media2/exoplayer/external/extractor/h;->b(I)V

    .line 4150
    invoke-interface/range {p1 .. p1}, Landroidx/media2/exoplayer/external/extractor/h;->c()J

    move-result-wide v3

    long-to-int v4, v3

    int-to-long v8, v4

    .line 4151
    iget-wide v10, v12, Landroidx/media2/exoplayer/external/extractor/f/d$a;->b:J

    add-long/2addr v8, v10

    .line 4152
    invoke-interface/range {p1 .. p1}, Landroidx/media2/exoplayer/external/extractor/h;->d()J

    move-result-wide v10

    cmp-long v3, v10, v6

    if-eqz v3, :cond_7

    cmp-long v3, v8, v10

    if-lez v3, :cond_7

    const/16 v3, 0x45

    .line 4154
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Data exceeds input length: "

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v15, v3}, Landroidx/media2/exoplayer/external/util/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    move-wide v8, v10

    .line 5078
    :cond_7
    iput v4, v2, Landroidx/media2/exoplayer/external/extractor/f/c;->f:I

    .line 5079
    iput-wide v8, v2, Landroidx/media2/exoplayer/external/extractor/f/c;->g:J

    .line 95
    iget-object v2, v0, Landroidx/media2/exoplayer/external/extractor/f/a;->b:Landroidx/media2/exoplayer/external/extractor/i;

    iget-object v3, v0, Landroidx/media2/exoplayer/external/extractor/f/a;->d:Landroidx/media2/exoplayer/external/extractor/f/c;

    invoke-interface {v2, v3}, Landroidx/media2/exoplayer/external/extractor/i;->a(Landroidx/media2/exoplayer/external/extractor/o;)V

    goto :goto_3

    .line 96
    :cond_8
    invoke-interface/range {p1 .. p1}, Landroidx/media2/exoplayer/external/extractor/h;->c()J

    move-result-wide v2

    const-wide/16 v8, 0x0

    cmp-long v4, v2, v8

    if-nez v4, :cond_9

    .line 97
    iget-object v2, v0, Landroidx/media2/exoplayer/external/extractor/f/a;->d:Landroidx/media2/exoplayer/external/extractor/f/c;

    .line 5087
    iget v2, v2, Landroidx/media2/exoplayer/external/extractor/f/c;->f:I

    .line 97
    invoke-interface {v1, v2}, Landroidx/media2/exoplayer/external/extractor/h;->b(I)V

    .line 100
    :cond_9
    :goto_3
    iget-object v2, v0, Landroidx/media2/exoplayer/external/extractor/f/a;->d:Landroidx/media2/exoplayer/external/extractor/f/c;

    .line 5095
    iget-wide v2, v2, Landroidx/media2/exoplayer/external/extractor/f/c;->g:J

    cmp-long v4, v2, v6

    if-eqz v4, :cond_a

    const/4 v4, 0x1

    goto :goto_4

    :cond_a
    const/4 v4, 0x0

    .line 101
    :goto_4
    invoke-static {v4}, Landroidx/media2/exoplayer/external/util/a;->b(Z)V

    .line 103
    invoke-interface/range {p1 .. p1}, Landroidx/media2/exoplayer/external/extractor/h;->c()J

    move-result-wide v6

    sub-long/2addr v2, v6

    const-wide/16 v6, 0x0

    cmp-long v4, v2, v6

    if-gtz v4, :cond_b

    return v5

    :cond_b
    const v4, 0x8000

    .line 108
    iget v6, v0, Landroidx/media2/exoplayer/external/extractor/f/a;->f:I

    sub-int/2addr v4, v6

    int-to-long v6, v4

    invoke-static {v6, v7, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v3, v2

    .line 109
    iget-object v2, v0, Landroidx/media2/exoplayer/external/extractor/f/a;->c:Landroidx/media2/exoplayer/external/extractor/q;

    const/4 v4, 0x1

    invoke-interface {v2, v1, v3, v4}, Landroidx/media2/exoplayer/external/extractor/q;->a(Landroidx/media2/exoplayer/external/extractor/h;IZ)I

    move-result v2

    if-eq v2, v5, :cond_c

    .line 111
    iget v3, v0, Landroidx/media2/exoplayer/external/extractor/f/a;->f:I

    add-int/2addr v3, v2

    iput v3, v0, Landroidx/media2/exoplayer/external/extractor/f/a;->f:I

    .line 115
    :cond_c
    iget v3, v0, Landroidx/media2/exoplayer/external/extractor/f/a;->f:I

    iget v4, v0, Landroidx/media2/exoplayer/external/extractor/f/a;->e:I

    div-int/2addr v3, v4

    if-lez v3, :cond_d

    .line 117
    iget-object v4, v0, Landroidx/media2/exoplayer/external/extractor/f/a;->d:Landroidx/media2/exoplayer/external/extractor/f/c;

    invoke-interface/range {p1 .. p1}, Landroidx/media2/exoplayer/external/extractor/h;->c()J

    move-result-wide v6

    iget v1, v0, Landroidx/media2/exoplayer/external/extractor/f/a;->f:I

    int-to-long v8, v1

    sub-long/2addr v6, v8

    invoke-virtual {v4, v6, v7}, Landroidx/media2/exoplayer/external/extractor/f/c;->b(J)J

    move-result-wide v9

    .line 118
    iget v1, v0, Landroidx/media2/exoplayer/external/extractor/f/a;->e:I

    mul-int v12, v3, v1

    .line 119
    iget v1, v0, Landroidx/media2/exoplayer/external/extractor/f/a;->f:I

    sub-int v13, v1, v12

    iput v13, v0, Landroidx/media2/exoplayer/external/extractor/f/a;->f:I

    .line 120
    iget-object v8, v0, Landroidx/media2/exoplayer/external/extractor/f/a;->c:Landroidx/media2/exoplayer/external/extractor/q;

    const/4 v11, 0x1

    const/4 v14, 0x0

    invoke-interface/range {v8 .. v14}, Landroidx/media2/exoplayer/external/extractor/q;->a(JIIILandroidx/media2/exoplayer/external/extractor/q$a;)V

    :cond_d
    if-ne v2, v5, :cond_e

    return v5

    :cond_e
    const/4 v1, 0x0

    return v1
.end method

.method public final a(JJ)V
    .locals 0

    const/4 p1, 0x0

    .line 69
    iput p1, p0, Landroidx/media2/exoplayer/external/extractor/f/a;->f:I

    return-void
.end method

.method public final a(Landroidx/media2/exoplayer/external/extractor/i;)V
    .locals 2

    .line 61
    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/f/a;->b:Landroidx/media2/exoplayer/external/extractor/i;

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 62
    invoke-interface {p1, v0, v1}, Landroidx/media2/exoplayer/external/extractor/i;->a(II)Landroidx/media2/exoplayer/external/extractor/q;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/exoplayer/external/extractor/f/a;->c:Landroidx/media2/exoplayer/external/extractor/q;

    const/4 v0, 0x0

    .line 63
    iput-object v0, p0, Landroidx/media2/exoplayer/external/extractor/f/a;->d:Landroidx/media2/exoplayer/external/extractor/f/c;

    .line 64
    invoke-interface {p1}, Landroidx/media2/exoplayer/external/extractor/i;->a()V

    return-void
.end method

.method public final a(Landroidx/media2/exoplayer/external/extractor/h;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 56
    invoke-static {p1}, Landroidx/media2/exoplayer/external/extractor/f/d;->a(Landroidx/media2/exoplayer/external/extractor/h;)Landroidx/media2/exoplayer/external/extractor/f/c;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.class public final Landroidx/media2/exoplayer/external/extractor/a/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media2/exoplayer/external/extractor/g;


# static fields
.field public static final a:Landroidx/media2/exoplayer/external/extractor/j;

.field private static final b:[I

.field private static final c:[I

.field private static final d:[B

.field private static final e:[B

.field private static final f:I


# instance fields
.field private final g:[B

.field private final h:I

.field private i:Z

.field private j:J

.field private k:I

.field private l:I

.field private m:Z

.field private n:J

.field private o:I

.field private p:I

.field private q:J

.field private r:Landroidx/media2/exoplayer/external/extractor/i;

.field private s:Landroidx/media2/exoplayer/external/extractor/q;

.field private t:Landroidx/media2/exoplayer/external/extractor/o;

.field private u:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 55
    sget-object v0, Landroidx/media2/exoplayer/external/extractor/a/b;->a:Landroidx/media2/exoplayer/external/extractor/j;

    sput-object v0, Landroidx/media2/exoplayer/external/extractor/a/a;->a:Landroidx/media2/exoplayer/external/extractor/j;

    const/16 v0, 0x10

    new-array v1, v0, [I

    .line 77
    fill-array-data v1, :array_0

    sput-object v1, Landroidx/media2/exoplayer/external/extractor/a/a;->b:[I

    new-array v0, v0, [I

    .line 100
    fill-array-data v0, :array_1

    sput-object v0, Landroidx/media2/exoplayer/external/extractor/a/a;->c:[I

    const-string v1, "#!AMR\n"

    .line 119
    invoke-static {v1}, Landroidx/media2/exoplayer/external/util/ac;->c(Ljava/lang/String;)[B

    move-result-object v1

    sput-object v1, Landroidx/media2/exoplayer/external/extractor/a/a;->d:[B

    const-string v1, "#!AMR-WB\n"

    .line 120
    invoke-static {v1}, Landroidx/media2/exoplayer/external/util/ac;->c(Ljava/lang/String;)[B

    move-result-object v1

    sput-object v1, Landroidx/media2/exoplayer/external/extractor/a/a;->e:[B

    const/16 v1, 0x8

    .line 123
    aget v0, v0, v1

    sput v0, Landroidx/media2/exoplayer/external/extractor/a/a;->f:I

    return-void

    nop

    :array_0
    .array-data 4
        0xd
        0xe
        0x10
        0x12
        0x14
        0x15
        0x1b
        0x20
        0x6
        0x7
        0x6
        0x6
        0x1
        0x1
        0x1
        0x1
    .end array-data

    :array_1
    .array-data 4
        0x12
        0x18
        0x21
        0x25
        0x29
        0x2f
        0x33
        0x3b
        0x3d
        0x6
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 153
    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/extractor/a/a;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 158
    iput p1, p0, Landroidx/media2/exoplayer/external/extractor/a/a;->h:I

    const/4 p1, 0x1

    new-array p1, p1, [B

    .line 159
    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/a/a;->g:[B

    const/4 p1, -0x1

    .line 160
    iput p1, p0, Landroidx/media2/exoplayer/external/extractor/a/a;->o:I

    return-void
.end method

.method private static a(Landroidx/media2/exoplayer/external/extractor/h;[B)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 248
    invoke-interface {p0}, Landroidx/media2/exoplayer/external/extractor/h;->a()V

    .line 249
    array-length v0, p1

    new-array v0, v0, [B

    .line 250
    array-length v1, p1

    const/4 v2, 0x0

    invoke-interface {p0, v0, v2, v1}, Landroidx/media2/exoplayer/external/extractor/h;->c([BII)V

    .line 251
    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    return p0
.end method

.method static final synthetic a()[Landroidx/media2/exoplayer/external/extractor/g;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Landroidx/media2/exoplayer/external/extractor/g;

    .line 55
    new-instance v1, Landroidx/media2/exoplayer/external/extractor/a/a;

    invoke-direct {v1}, Landroidx/media2/exoplayer/external/extractor/a/a;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method

.method private b(Landroidx/media2/exoplayer/external/extractor/h;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 233
    sget-object v0, Landroidx/media2/exoplayer/external/extractor/a/a;->d:[B

    invoke-static {p1, v0}, Landroidx/media2/exoplayer/external/extractor/a/a;->a(Landroidx/media2/exoplayer/external/extractor/h;[B)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    .line 234
    iput-boolean v2, p0, Landroidx/media2/exoplayer/external/extractor/a/a;->i:Z

    .line 235
    array-length v0, v0

    invoke-interface {p1, v0}, Landroidx/media2/exoplayer/external/extractor/h;->b(I)V

    return v3

    .line 237
    :cond_0
    sget-object v0, Landroidx/media2/exoplayer/external/extractor/a/a;->e:[B

    invoke-static {p1, v0}, Landroidx/media2/exoplayer/external/extractor/a/a;->a(Landroidx/media2/exoplayer/external/extractor/h;[B)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 238
    iput-boolean v3, p0, Landroidx/media2/exoplayer/external/extractor/a/a;->i:Z

    .line 239
    array-length v0, v0

    invoke-interface {p1, v0}, Landroidx/media2/exoplayer/external/extractor/h;->b(I)V

    return v3

    :cond_1
    return v2
.end method

.method private c(Landroidx/media2/exoplayer/external/extractor/h;)I
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 277
    iget v0, p0, Landroidx/media2/exoplayer/external/extractor/a/a;->l:I

    const/4 v1, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_b

    .line 2316
    :try_start_0
    invoke-interface {p1}, Landroidx/media2/exoplayer/external/extractor/h;->a()V

    .line 2317
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/a/a;->g:[B

    invoke-interface {p1, v0, v3, v2}, Landroidx/media2/exoplayer/external/extractor/h;->c([BII)V

    .line 2319
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/a/a;->g:[B

    aget-byte v0, v0, v3

    and-int/lit16 v4, v0, 0x83

    if-gtz v4, :cond_a

    shr-int/lit8 v0, v0, 0x3

    const/16 v4, 0xf

    and-int/2addr v0, v4

    if-ltz v0, :cond_5

    if-gt v0, v4, :cond_5

    .line 2347
    iget-boolean v4, p0, Landroidx/media2/exoplayer/external/extractor/a/a;->i:Z

    if-eqz v4, :cond_1

    const/16 v5, 0xa

    if-lt v0, v5, :cond_0

    const/16 v5, 0xd

    if-le v0, v5, :cond_1

    :cond_0
    const/4 v5, 0x1

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    :goto_0
    if-nez v5, :cond_4

    if-nez v4, :cond_3

    const/16 v4, 0xc

    if-lt v0, v4, :cond_2

    const/16 v4, 0xe

    if-le v0, v4, :cond_3

    :cond_2
    const/4 v4, 0x1

    goto :goto_1

    :cond_3
    const/4 v4, 0x0

    :goto_1
    if-eqz v4, :cond_5

    :cond_4
    const/4 v4, 0x1

    goto :goto_2

    :cond_5
    const/4 v4, 0x0

    :goto_2
    if-nez v4, :cond_7

    .line 2332
    new-instance p1, Landroidx/media2/exoplayer/external/ParserException;

    .line 2333
    iget-boolean v2, p0, Landroidx/media2/exoplayer/external/extractor/a/a;->i:Z

    if-eqz v2, :cond_6

    const-string v2, "WB"

    goto :goto_3

    :cond_6
    const-string v2, "NB"

    :goto_3
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x23

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Illegal AMR "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " frame type "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Landroidx/media2/exoplayer/external/ParserException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2336
    :cond_7
    iget-boolean v4, p0, Landroidx/media2/exoplayer/external/extractor/a/a;->i:Z

    if-eqz v4, :cond_8

    sget-object v4, Landroidx/media2/exoplayer/external/extractor/a/a;->c:[I

    aget v0, v4, v0

    goto :goto_4

    :cond_8
    sget-object v4, Landroidx/media2/exoplayer/external/extractor/a/a;->b:[I

    aget v0, v4, v0

    .line 279
    :goto_4
    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/a/a;->k:I
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 283
    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/a/a;->l:I

    .line 284
    iget v0, p0, Landroidx/media2/exoplayer/external/extractor/a/a;->o:I

    if-ne v0, v1, :cond_9

    .line 285
    invoke-interface {p1}, Landroidx/media2/exoplayer/external/extractor/h;->c()J

    move-result-wide v4

    iput-wide v4, p0, Landroidx/media2/exoplayer/external/extractor/a/a;->n:J

    .line 286
    iget v0, p0, Landroidx/media2/exoplayer/external/extractor/a/a;->k:I

    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/a/a;->o:I

    .line 288
    :cond_9
    iget v0, p0, Landroidx/media2/exoplayer/external/extractor/a/a;->o:I

    iget v4, p0, Landroidx/media2/exoplayer/external/extractor/a/a;->k:I

    if-ne v0, v4, :cond_b

    .line 289
    iget v0, p0, Landroidx/media2/exoplayer/external/extractor/a/a;->p:I

    add-int/2addr v0, v2

    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/a/a;->p:I

    goto :goto_5

    .line 2323
    :cond_a
    :try_start_1
    new-instance p1, Landroidx/media2/exoplayer/external/ParserException;

    const/16 v2, 0x2a

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Invalid padding bits for frame header "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Landroidx/media2/exoplayer/external/ParserException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    return v1

    .line 293
    :cond_b
    :goto_5
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/a/a;->s:Landroidx/media2/exoplayer/external/extractor/q;

    iget v4, p0, Landroidx/media2/exoplayer/external/extractor/a/a;->l:I

    .line 294
    invoke-interface {v0, p1, v4, v2}, Landroidx/media2/exoplayer/external/extractor/q;->a(Landroidx/media2/exoplayer/external/extractor/h;IZ)I

    move-result p1

    if-ne p1, v1, :cond_c

    return v1

    .line 299
    :cond_c
    iget v0, p0, Landroidx/media2/exoplayer/external/extractor/a/a;->l:I

    sub-int/2addr v0, p1

    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/a/a;->l:I

    if-lez v0, :cond_d

    return v3

    .line 304
    :cond_d
    iget-object v4, p0, Landroidx/media2/exoplayer/external/extractor/a/a;->s:Landroidx/media2/exoplayer/external/extractor/q;

    iget-wide v0, p0, Landroidx/media2/exoplayer/external/extractor/a/a;->q:J

    iget-wide v5, p0, Landroidx/media2/exoplayer/external/extractor/a/a;->j:J

    add-long/2addr v5, v0

    const/4 v7, 0x1

    iget v8, p0, Landroidx/media2/exoplayer/external/extractor/a/a;->k:I

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-interface/range {v4 .. v10}, Landroidx/media2/exoplayer/external/extractor/q;->a(JIIILandroidx/media2/exoplayer/external/extractor/q$a;)V

    .line 310
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/extractor/a/a;->j:J

    const-wide/16 v4, 0x4e20

    add-long/2addr v0, v4

    iput-wide v0, p0, Landroidx/media2/exoplayer/external/extractor/a/a;->j:J

    return v3
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

    .line 180
    invoke-interface/range {p1 .. p1}, Landroidx/media2/exoplayer/external/extractor/h;->c()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_1

    .line 181
    invoke-direct/range {p0 .. p1}, Landroidx/media2/exoplayer/external/extractor/a/a;->b(Landroidx/media2/exoplayer/external/extractor/h;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 182
    :cond_0
    new-instance v1, Landroidx/media2/exoplayer/external/ParserException;

    const-string v2, "Could not find AMR header."

    invoke-direct {v1, v2}, Landroidx/media2/exoplayer/external/ParserException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1255
    :cond_1
    :goto_0
    iget-boolean v1, v0, Landroidx/media2/exoplayer/external/extractor/a/a;->u:Z

    const/4 v2, 0x1

    if-nez v1, :cond_4

    .line 1256
    iput-boolean v2, v0, Landroidx/media2/exoplayer/external/extractor/a/a;->u:Z

    .line 1257
    iget-boolean v1, v0, Landroidx/media2/exoplayer/external/extractor/a/a;->i:Z

    if-eqz v1, :cond_2

    const-string v3, "audio/amr-wb"

    goto :goto_1

    :cond_2
    const-string v3, "audio/3gpp"

    :goto_1
    move-object v5, v3

    if-eqz v1, :cond_3

    const/16 v1, 0x3e80

    const/16 v10, 0x3e80

    goto :goto_2

    :cond_3
    const/16 v1, 0x1f40

    const/16 v10, 0x1f40

    .line 1259
    :goto_2
    iget-object v1, v0, Landroidx/media2/exoplayer/external/extractor/a/a;->s:Landroidx/media2/exoplayer/external/extractor/q;

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, -0x1

    sget v8, Landroidx/media2/exoplayer/external/extractor/a/a;->f:I

    const/4 v9, 0x1

    const/4 v11, -0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    .line 1260
    invoke-static/range {v4 .. v15}, Landroidx/media2/exoplayer/external/Format;->createAudioSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIILjava/util/List;Landroidx/media2/exoplayer/external/drm/DrmInitData;ILjava/lang/String;)Landroidx/media2/exoplayer/external/Format;

    move-result-object v3

    .line 1259
    invoke-interface {v1, v3}, Landroidx/media2/exoplayer/external/extractor/q;->a(Landroidx/media2/exoplayer/external/Format;)V

    .line 186
    :cond_4
    invoke-direct/range {p0 .. p1}, Landroidx/media2/exoplayer/external/extractor/a/a;->c(Landroidx/media2/exoplayer/external/extractor/h;)I

    move-result v1

    .line 187
    invoke-interface/range {p1 .. p1}, Landroidx/media2/exoplayer/external/extractor/h;->d()J

    move-result-wide v4

    .line 1356
    iget-boolean v3, v0, Landroidx/media2/exoplayer/external/extractor/a/a;->m:Z

    if-nez v3, :cond_8

    .line 1360
    iget v3, v0, Landroidx/media2/exoplayer/external/extractor/a/a;->h:I

    and-int/2addr v3, v2

    if-eqz v3, :cond_7

    const-wide/16 v6, -0x1

    cmp-long v3, v4, v6

    if-eqz v3, :cond_7

    iget v9, v0, Landroidx/media2/exoplayer/external/extractor/a/a;->o:I

    const/4 v3, -0x1

    if-eq v9, v3, :cond_5

    iget v6, v0, Landroidx/media2/exoplayer/external/extractor/a/a;->k:I

    if-eq v9, v6, :cond_5

    goto :goto_3

    .line 1366
    :cond_5
    iget v6, v0, Landroidx/media2/exoplayer/external/extractor/a/a;->p:I

    const/16 v7, 0x14

    if-ge v6, v7, :cond_6

    if-ne v1, v3, :cond_8

    :cond_6
    mul-int/lit8 v3, v9, 0x8

    int-to-long v6, v3

    const-wide/32 v10, 0xf4240

    mul-long v6, v6, v10

    const-wide/16 v10, 0x4e20

    .line 1387
    div-long/2addr v6, v10

    long-to-int v8, v6

    .line 1376
    new-instance v10, Landroidx/media2/exoplayer/external/extractor/c;

    iget-wide v6, v0, Landroidx/media2/exoplayer/external/extractor/a/a;->n:J

    move-object v3, v10

    invoke-direct/range {v3 .. v9}, Landroidx/media2/exoplayer/external/extractor/c;-><init>(JJII)V

    .line 1368
    iput-object v10, v0, Landroidx/media2/exoplayer/external/extractor/a/a;->t:Landroidx/media2/exoplayer/external/extractor/o;

    .line 1369
    iget-object v3, v0, Landroidx/media2/exoplayer/external/extractor/a/a;->r:Landroidx/media2/exoplayer/external/extractor/i;

    invoke-interface {v3, v10}, Landroidx/media2/exoplayer/external/extractor/i;->a(Landroidx/media2/exoplayer/external/extractor/o;)V

    .line 1370
    iput-boolean v2, v0, Landroidx/media2/exoplayer/external/extractor/a/a;->m:Z

    goto :goto_4

    .line 1363
    :cond_7
    :goto_3
    new-instance v3, Landroidx/media2/exoplayer/external/extractor/o$b;

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {v3, v4, v5}, Landroidx/media2/exoplayer/external/extractor/o$b;-><init>(J)V

    iput-object v3, v0, Landroidx/media2/exoplayer/external/extractor/a/a;->t:Landroidx/media2/exoplayer/external/extractor/o;

    .line 1364
    iget-object v4, v0, Landroidx/media2/exoplayer/external/extractor/a/a;->r:Landroidx/media2/exoplayer/external/extractor/i;

    invoke-interface {v4, v3}, Landroidx/media2/exoplayer/external/extractor/i;->a(Landroidx/media2/exoplayer/external/extractor/o;)V

    .line 1365
    iput-boolean v2, v0, Landroidx/media2/exoplayer/external/extractor/a/a;->m:Z

    :cond_8
    :goto_4
    return v1
.end method

.method public final a(JJ)V
    .locals 2

    const-wide/16 p3, 0x0

    .line 193
    iput-wide p3, p0, Landroidx/media2/exoplayer/external/extractor/a/a;->j:J

    const/4 v0, 0x0

    .line 194
    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/a/a;->k:I

    .line 195
    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/a/a;->l:I

    cmp-long v0, p1, p3

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/a/a;->t:Landroidx/media2/exoplayer/external/extractor/o;

    instance-of v1, v0, Landroidx/media2/exoplayer/external/extractor/c;

    if-eqz v1, :cond_0

    .line 197
    check-cast v0, Landroidx/media2/exoplayer/external/extractor/c;

    invoke-virtual {v0, p1, p2}, Landroidx/media2/exoplayer/external/extractor/c;->b(J)J

    move-result-wide p1

    iput-wide p1, p0, Landroidx/media2/exoplayer/external/extractor/a/a;->q:J

    return-void

    .line 199
    :cond_0
    iput-wide p3, p0, Landroidx/media2/exoplayer/external/extractor/a/a;->q:J

    return-void
.end method

.method public final a(Landroidx/media2/exoplayer/external/extractor/i;)V
    .locals 2

    .line 172
    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/a/a;->r:Landroidx/media2/exoplayer/external/extractor/i;

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 173
    invoke-interface {p1, v0, v1}, Landroidx/media2/exoplayer/external/extractor/i;->a(II)Landroidx/media2/exoplayer/external/extractor/q;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/exoplayer/external/extractor/a/a;->s:Landroidx/media2/exoplayer/external/extractor/q;

    .line 174
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

    .line 167
    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/extractor/a/a;->b(Landroidx/media2/exoplayer/external/extractor/h;)Z

    move-result p1

    return p1
.end method

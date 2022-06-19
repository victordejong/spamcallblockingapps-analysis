.class public final Lcom/google/android/exoplayer2/extractor/a/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/h;


# static fields
.field public static final a:Lcom/google/android/exoplayer2/extractor/l;

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

.field private r:Lcom/google/android/exoplayer2/extractor/j;

.field private s:Lcom/google/android/exoplayer2/extractor/x;

.field private t:Lcom/google/android/exoplayer2/extractor/v;

.field private u:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 52
    sget-object v0, Lcom/google/android/exoplayer2/extractor/a/-$$Lambda$a$zojJddZNnAE5hwIEZlpwWg0xDGY;->INSTANCE:Lcom/google/android/exoplayer2/extractor/a/-$$Lambda$a$zojJddZNnAE5hwIEZlpwWg0xDGY;

    sput-object v0, Lcom/google/android/exoplayer2/extractor/a/a;->a:Lcom/google/android/exoplayer2/extractor/l;

    const/16 v0, 0x10

    new-array v1, v0, [I

    .line 74
    fill-array-data v1, :array_0

    sput-object v1, Lcom/google/android/exoplayer2/extractor/a/a;->b:[I

    new-array v0, v0, [I

    .line 97
    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/android/exoplayer2/extractor/a/a;->c:[I

    const-string v1, "#!AMR\n"

    .line 116
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/af;->c(Ljava/lang/String;)[B

    move-result-object v1

    sput-object v1, Lcom/google/android/exoplayer2/extractor/a/a;->d:[B

    const-string v1, "#!AMR-WB\n"

    .line 117
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/af;->c(Ljava/lang/String;)[B

    move-result-object v1

    sput-object v1, Lcom/google/android/exoplayer2/extractor/a/a;->e:[B

    const/16 v1, 0x8

    .line 120
    aget v0, v0, v1

    sput v0, Lcom/google/android/exoplayer2/extractor/a/a;->f:I

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

    .line 150
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/extractor/a/a;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 155
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/a/a;->h:I

    const/4 p1, 0x1

    new-array p1, p1, [B

    .line 156
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/a/a;->g:[B

    const/4 p1, -0x1

    .line 157
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/a/a;->o:I

    return-void
.end method

.method private static a(Lcom/google/android/exoplayer2/extractor/i;[B)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 245
    invoke-interface {p0}, Lcom/google/android/exoplayer2/extractor/i;->a()V

    .line 246
    array-length v0, p1

    new-array v0, v0, [B

    .line 247
    array-length v1, p1

    const/4 v2, 0x0

    invoke-interface {p0, v0, v2, v1}, Lcom/google/android/exoplayer2/extractor/i;->d([BII)V

    .line 248
    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    return p0
.end method

.method private static synthetic a()[Lcom/google/android/exoplayer2/extractor/h;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/android/exoplayer2/extractor/h;

    .line 52
    new-instance v1, Lcom/google/android/exoplayer2/extractor/a/a;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/extractor/a/a;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method

.method private b(Lcom/google/android/exoplayer2/extractor/i;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 230
    sget-object v0, Lcom/google/android/exoplayer2/extractor/a/a;->d:[B

    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/extractor/a/a;->a(Lcom/google/android/exoplayer2/extractor/i;[B)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    .line 231
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/extractor/a/a;->i:Z

    .line 232
    array-length v0, v0

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/extractor/i;->b(I)V

    return v3

    .line 234
    :cond_0
    sget-object v0, Lcom/google/android/exoplayer2/extractor/a/a;->e:[B

    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/extractor/a/a;->a(Lcom/google/android/exoplayer2/extractor/i;[B)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 235
    iput-boolean v3, p0, Lcom/google/android/exoplayer2/extractor/a/a;->i:Z

    .line 236
    array-length v0, v0

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/extractor/i;->b(I)V

    return v3

    :cond_1
    return v2
.end method

.method private c(Lcom/google/android/exoplayer2/extractor/i;)I
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "trackOutput"
        }
    .end annotation

    .line 269
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/a/a;->l:I

    const/4 v1, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_b

    .line 4307
    :try_start_0
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/i;->a()V

    .line 4308
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/a/a;->g:[B

    invoke-interface {p1, v0, v3, v2}, Lcom/google/android/exoplayer2/extractor/i;->d([BII)V

    .line 4310
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/a/a;->g:[B

    aget-byte v0, v0, v3

    and-int/lit16 v4, v0, 0x83

    if-gtz v4, :cond_a

    shr-int/lit8 v0, v0, 0x3

    const/16 v4, 0xf

    and-int/2addr v0, v4

    if-ltz v0, :cond_5

    if-gt v0, v4, :cond_5

    .line 4338
    iget-boolean v4, p0, Lcom/google/android/exoplayer2/extractor/a/a;->i:Z

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

    .line 4323
    new-instance p1, Lcom/google/android/exoplayer2/ParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Illegal AMR "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 4324
    iget-boolean v3, p0, Lcom/google/android/exoplayer2/extractor/a/a;->i:Z

    if-eqz v3, :cond_6

    const-string v3, "WB"

    goto :goto_3

    :cond_6
    const-string v3, "NB"

    :goto_3
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " frame type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4327
    :cond_7
    iget-boolean v4, p0, Lcom/google/android/exoplayer2/extractor/a/a;->i:Z

    if-eqz v4, :cond_8

    sget-object v4, Lcom/google/android/exoplayer2/extractor/a/a;->c:[I

    aget v0, v4, v0

    goto :goto_4

    :cond_8
    sget-object v4, Lcom/google/android/exoplayer2/extractor/a/a;->b:[I

    aget v0, v4, v0

    .line 271
    :goto_4
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/a/a;->k:I
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 275
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/a/a;->l:I

    .line 276
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/a/a;->o:I

    if-ne v0, v1, :cond_9

    .line 277
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/i;->c()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/android/exoplayer2/extractor/a/a;->n:J

    .line 278
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/a/a;->k:I

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/a/a;->o:I

    .line 280
    :cond_9
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/a/a;->o:I

    iget v4, p0, Lcom/google/android/exoplayer2/extractor/a/a;->k:I

    if-ne v0, v4, :cond_b

    .line 281
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/a/a;->p:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/a/a;->p:I

    goto :goto_5

    .line 4314
    :cond_a
    :try_start_1
    new-instance p1, Lcom/google/android/exoplayer2/ParserException;

    const-string v2, "Invalid padding bits for frame header "

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    return v1

    .line 285
    :cond_b
    :goto_5
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/a/a;->s:Lcom/google/android/exoplayer2/extractor/x;

    iget v4, p0, Lcom/google/android/exoplayer2/extractor/a/a;->l:I

    .line 286
    invoke-interface {v0, p1, v4, v2}, Lcom/google/android/exoplayer2/extractor/x;->b(Lcom/google/android/exoplayer2/upstream/e;IZ)I

    move-result p1

    if-ne p1, v1, :cond_c

    return v1

    .line 291
    :cond_c
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/a/a;->l:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/a/a;->l:I

    if-lez v0, :cond_d

    return v3

    .line 296
    :cond_d
    iget-object v4, p0, Lcom/google/android/exoplayer2/extractor/a/a;->s:Lcom/google/android/exoplayer2/extractor/x;

    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/a/a;->q:J

    iget-wide v5, p0, Lcom/google/android/exoplayer2/extractor/a/a;->j:J

    add-long/2addr v5, v0

    const/4 v7, 0x1

    iget v8, p0, Lcom/google/android/exoplayer2/extractor/a/a;->k:I

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-interface/range {v4 .. v10}, Lcom/google/android/exoplayer2/extractor/x;->a(JIIILcom/google/android/exoplayer2/extractor/x$a;)V

    .line 302
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/a/a;->j:J

    const-wide/16 v4, 0x4e20

    add-long/2addr v0, v4

    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/a/a;->j:J

    return v3
.end method

.method public static synthetic lambda$zojJddZNnAE5hwIEZlpwWg0xDGY()[Lcom/google/android/exoplayer2/extractor/h;
    .locals 1

    invoke-static {}, Lcom/google/android/exoplayer2/extractor/a/a;->a()[Lcom/google/android/exoplayer2/extractor/h;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/google/android/exoplayer2/extractor/i;Lcom/google/android/exoplayer2/extractor/u;)I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1373
    iget-object p2, p0, Lcom/google/android/exoplayer2/extractor/a/a;->s:Lcom/google/android/exoplayer2/extractor/x;

    invoke-static {p2}, Lcom/google/android/exoplayer2/util/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1374
    iget-object p2, p0, Lcom/google/android/exoplayer2/extractor/a/a;->r:Lcom/google/android/exoplayer2/extractor/j;

    invoke-static {p2}, Lcom/google/android/exoplayer2/util/af;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/i;->c()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p2, v0, v2

    if-nez p2, :cond_1

    .line 178
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/a/a;->b(Lcom/google/android/exoplayer2/extractor/i;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    .line 179
    :cond_0
    new-instance p1, Lcom/google/android/exoplayer2/ParserException;

    const-string p2, "Could not find AMR header."

    invoke-direct {p1, p2}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2253
    :cond_1
    :goto_0
    iget-boolean p2, p0, Lcom/google/android/exoplayer2/extractor/a/a;->u:Z

    const/4 v0, 0x1

    if-nez p2, :cond_4

    .line 2254
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/a/a;->u:Z

    .line 2255
    iget-boolean p2, p0, Lcom/google/android/exoplayer2/extractor/a/a;->i:Z

    if-eqz p2, :cond_2

    const-string v1, "audio/amr-wb"

    goto :goto_1

    :cond_2
    const-string v1, "audio/3gpp"

    :goto_1
    if-eqz p2, :cond_3

    const/16 p2, 0x3e80

    goto :goto_2

    :cond_3
    const/16 p2, 0x1f40

    .line 2257
    :goto_2
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/a/a;->s:Lcom/google/android/exoplayer2/extractor/x;

    new-instance v3, Lcom/google/android/exoplayer2/Format$a;

    invoke-direct {v3}, Lcom/google/android/exoplayer2/Format$a;-><init>()V

    .line 2370
    iput-object v1, v3, Lcom/google/android/exoplayer2/Format$a;->k:Ljava/lang/String;

    .line 2259
    sget v1, Lcom/google/android/exoplayer2/extractor/a/a;->f:I

    .line 2381
    iput v1, v3, Lcom/google/android/exoplayer2/Format$a;->l:I

    .line 2517
    iput v0, v3, Lcom/google/android/exoplayer2/Format$a;->x:I

    .line 2528
    iput p2, v3, Lcom/google/android/exoplayer2/Format$a;->y:I

    .line 2263
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/Format$a;->a()Lcom/google/android/exoplayer2/Format;

    move-result-object p2

    .line 2257
    invoke-interface {v2, p2}, Lcom/google/android/exoplayer2/extractor/x;->a(Lcom/google/android/exoplayer2/Format;)V

    .line 183
    :cond_4
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/a/a;->c(Lcom/google/android/exoplayer2/extractor/i;)I

    move-result p2

    .line 184
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/i;->d()J

    move-result-wide v2

    .line 3348
    iget-boolean p1, p0, Lcom/google/android/exoplayer2/extractor/a/a;->m:Z

    if-nez p1, :cond_8

    .line 3352
    iget p1, p0, Lcom/google/android/exoplayer2/extractor/a/a;->h:I

    and-int/2addr p1, v0

    if-eqz p1, :cond_7

    const-wide/16 v4, -0x1

    cmp-long p1, v2, v4

    if-eqz p1, :cond_7

    iget v7, p0, Lcom/google/android/exoplayer2/extractor/a/a;->o:I

    const/4 p1, -0x1

    if-eq v7, p1, :cond_5

    iget v1, p0, Lcom/google/android/exoplayer2/extractor/a/a;->k:I

    if-eq v7, v1, :cond_5

    goto :goto_3

    .line 3358
    :cond_5
    iget v1, p0, Lcom/google/android/exoplayer2/extractor/a/a;->p:I

    const/16 v4, 0x14

    if-ge v1, v4, :cond_6

    if-ne p2, p1, :cond_8

    :cond_6
    mul-int/lit8 p1, v7, 0x8

    int-to-long v4, p1

    const-wide/32 v8, 0xf4240

    mul-long v4, v4, v8

    const-wide/16 v8, 0x4e20

    .line 3385
    div-long/2addr v4, v8

    long-to-int v6, v4

    .line 3368
    new-instance p1, Lcom/google/android/exoplayer2/extractor/d;

    iget-wide v4, p0, Lcom/google/android/exoplayer2/extractor/a/a;->n:J

    move-object v1, p1

    invoke-direct/range {v1 .. v7}, Lcom/google/android/exoplayer2/extractor/d;-><init>(JJII)V

    .line 3360
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/a/a;->t:Lcom/google/android/exoplayer2/extractor/v;

    .line 3361
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/a/a;->r:Lcom/google/android/exoplayer2/extractor/j;

    invoke-interface {v1, p1}, Lcom/google/android/exoplayer2/extractor/j;->a(Lcom/google/android/exoplayer2/extractor/v;)V

    .line 3362
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/a/a;->m:Z

    goto :goto_4

    .line 3355
    :cond_7
    :goto_3
    new-instance p1, Lcom/google/android/exoplayer2/extractor/v$b;

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {p1, v1, v2}, Lcom/google/android/exoplayer2/extractor/v$b;-><init>(J)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/a/a;->t:Lcom/google/android/exoplayer2/extractor/v;

    .line 3356
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/a/a;->r:Lcom/google/android/exoplayer2/extractor/j;

    invoke-interface {v1, p1}, Lcom/google/android/exoplayer2/extractor/j;->a(Lcom/google/android/exoplayer2/extractor/v;)V

    .line 3357
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/a/a;->m:Z

    :cond_8
    :goto_4
    return p2
.end method

.method public final a(JJ)V
    .locals 2

    const-wide/16 p3, 0x0

    .line 190
    iput-wide p3, p0, Lcom/google/android/exoplayer2/extractor/a/a;->j:J

    const/4 v0, 0x0

    .line 191
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/a/a;->k:I

    .line 192
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/a/a;->l:I

    cmp-long v0, p1, p3

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/a/a;->t:Lcom/google/android/exoplayer2/extractor/v;

    instance-of v1, v0, Lcom/google/android/exoplayer2/extractor/d;

    if-eqz v1, :cond_0

    .line 194
    check-cast v0, Lcom/google/android/exoplayer2/extractor/d;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/extractor/d;->b(J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/exoplayer2/extractor/a/a;->q:J

    return-void

    .line 196
    :cond_0
    iput-wide p3, p0, Lcom/google/android/exoplayer2/extractor/a/a;->q:J

    return-void
.end method

.method public final a(Lcom/google/android/exoplayer2/extractor/j;)V
    .locals 2

    .line 169
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/a/a;->r:Lcom/google/android/exoplayer2/extractor/j;

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 170
    invoke-interface {p1, v0, v1}, Lcom/google/android/exoplayer2/extractor/j;->a(II)Lcom/google/android/exoplayer2/extractor/x;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/a/a;->s:Lcom/google/android/exoplayer2/extractor/x;

    .line 171
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/j;->a()V

    return-void
.end method

.method public final a(Lcom/google/android/exoplayer2/extractor/i;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 164
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/a/a;->b(Lcom/google/android/exoplayer2/extractor/i;)Z

    move-result p1

    return p1
.end method

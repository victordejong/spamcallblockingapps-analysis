.class public final Lcom/google/android/exoplayer2/extractor/e/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/h;


# static fields
.field public static final a:Lcom/google/android/exoplayer2/extractor/l;

.field private static final c:Lcom/google/android/exoplayer2/metadata/id3/a$a;


# instance fields
.field public b:Z

.field private final d:I

.field private final e:J

.field private final f:Lcom/google/android/exoplayer2/util/u;

.field private final g:Lcom/google/android/exoplayer2/audio/o$a;

.field private final h:Lcom/google/android/exoplayer2/extractor/r;

.field private final i:Lcom/google/android/exoplayer2/extractor/s;

.field private final j:Lcom/google/android/exoplayer2/extractor/x;

.field private k:Lcom/google/android/exoplayer2/extractor/j;

.field private l:Lcom/google/android/exoplayer2/extractor/x;

.field private m:Lcom/google/android/exoplayer2/extractor/x;

.field private n:I

.field private o:Lcom/google/android/exoplayer2/metadata/Metadata;

.field private p:J

.field private q:J

.field private r:J

.field private s:I

.field private t:Lcom/google/android/exoplayer2/extractor/e/e;

.field private u:Z

.field private v:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 57
    sget-object v0, Lcom/google/android/exoplayer2/extractor/e/-$$Lambda$d$XJdJ6ZpohJv4AAuLJquM-M3_-Ck;->INSTANCE:Lcom/google/android/exoplayer2/extractor/e/-$$Lambda$d$XJdJ6ZpohJv4AAuLJquM-M3_-Ck;

    sput-object v0, Lcom/google/android/exoplayer2/extractor/e/d;->a:Lcom/google/android/exoplayer2/extractor/l;

    .line 101
    sget-object v0, Lcom/google/android/exoplayer2/extractor/e/-$$Lambda$d$APLDWOkc9tfIH2WjBq4j4dsr_Xw;->INSTANCE:Lcom/google/android/exoplayer2/extractor/e/-$$Lambda$d$APLDWOkc9tfIH2WjBq4j4dsr_Xw;

    sput-object v0, Lcom/google/android/exoplayer2/extractor/e/d;->c:Lcom/google/android/exoplayer2/metadata/id3/a$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 155
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/extractor/e/d;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 162
    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/exoplayer2/extractor/e/d;-><init>(IJ)V

    return-void
.end method

.method public constructor <init>(IJ)V
    .locals 0

    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 171
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/e/d;->d:I

    .line 172
    iput-wide p2, p0, Lcom/google/android/exoplayer2/extractor/e/d;->e:J

    .line 173
    new-instance p1, Lcom/google/android/exoplayer2/util/u;

    const/16 p2, 0xa

    invoke-direct {p1, p2}, Lcom/google/android/exoplayer2/util/u;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/e/d;->f:Lcom/google/android/exoplayer2/util/u;

    .line 174
    new-instance p1, Lcom/google/android/exoplayer2/audio/o$a;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/audio/o$a;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/e/d;->g:Lcom/google/android/exoplayer2/audio/o$a;

    .line 175
    new-instance p1, Lcom/google/android/exoplayer2/extractor/r;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/extractor/r;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/e/d;->h:Lcom/google/android/exoplayer2/extractor/r;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 176
    iput-wide p1, p0, Lcom/google/android/exoplayer2/extractor/e/d;->p:J

    .line 177
    new-instance p1, Lcom/google/android/exoplayer2/extractor/s;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/extractor/s;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/e/d;->i:Lcom/google/android/exoplayer2/extractor/s;

    .line 178
    new-instance p1, Lcom/google/android/exoplayer2/extractor/g;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/extractor/g;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/e/d;->j:Lcom/google/android/exoplayer2/extractor/x;

    .line 179
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/e/d;->m:Lcom/google/android/exoplayer2/extractor/x;

    return-void
.end method

.method private a(J)J
    .locals 4

    .line 328
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/e/d;->p:J

    const-wide/32 v2, 0xf4240

    mul-long p1, p1, v2

    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/e/d;->g:Lcom/google/android/exoplayer2/audio/o$a;

    iget v2, v2, Lcom/google/android/exoplayer2/audio/o$a;->d:I

    int-to-long v2, v2

    div-long/2addr p1, v2

    add-long/2addr v0, p1

    return-wide v0
.end method

.method private static a(Lcom/google/android/exoplayer2/metadata/Metadata;)J
    .locals 5

    if-eqz p0, :cond_1

    .line 569
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/metadata/Metadata;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 571
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/metadata/Metadata;->get(I)Lcom/google/android/exoplayer2/metadata/Metadata$Entry;

    move-result-object v2

    .line 572
    instance-of v3, v2, Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;

    if-eqz v3, :cond_0

    check-cast v2, Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;

    iget-object v3, v2, Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;->id:Ljava/lang/String;

    const-string v4, "TLEN"

    .line 573
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 574
    iget-object p0, v2, Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;->value:Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/f;->b(J)J

    move-result-wide v0

    return-wide v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0
.end method

.method private static a(Lcom/google/android/exoplayer2/metadata/Metadata;J)Lcom/google/android/exoplayer2/extractor/e/c;
    .locals 11

    if-eqz p0, :cond_2

    .line 556
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/metadata/Metadata;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    .line 558
    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/metadata/Metadata;->get(I)Lcom/google/android/exoplayer2/metadata/Metadata$Entry;

    move-result-object v3

    .line 559
    instance-of v4, v3, Lcom/google/android/exoplayer2/metadata/id3/MlltFrame;

    if-eqz v4, :cond_1

    .line 560
    check-cast v3, Lcom/google/android/exoplayer2/metadata/id3/MlltFrame;

    invoke-static {p0}, Lcom/google/android/exoplayer2/extractor/e/d;->a(Lcom/google/android/exoplayer2/metadata/Metadata;)J

    move-result-wide v4

    .line 12037
    iget-object p0, v3, Lcom/google/android/exoplayer2/metadata/id3/MlltFrame;->bytesDeviations:[I

    array-length p0, p0

    add-int/lit8 v0, p0, 0x1

    .line 12038
    new-array v2, v0, [J

    .line 12039
    new-array v0, v0, [J

    .line 12040
    aput-wide p1, v2, v1

    const-wide/16 v6, 0x0

    .line 12041
    aput-wide v6, v0, v1

    const/4 v1, 0x1

    :goto_1
    if-gt v1, p0, :cond_0

    .line 12045
    iget v8, v3, Lcom/google/android/exoplayer2/metadata/id3/MlltFrame;->bytesBetweenReference:I

    iget-object v9, v3, Lcom/google/android/exoplayer2/metadata/id3/MlltFrame;->bytesDeviations:[I

    add-int/lit8 v10, v1, -0x1

    aget v9, v9, v10

    add-int/2addr v8, v9

    int-to-long v8, v8

    add-long/2addr p1, v8

    .line 12046
    iget v8, v3, Lcom/google/android/exoplayer2/metadata/id3/MlltFrame;->millisecondsBetweenReference:I

    iget-object v9, v3, Lcom/google/android/exoplayer2/metadata/id3/MlltFrame;->millisecondsDeviations:[I

    aget v9, v9, v10

    add-int/2addr v8, v9

    int-to-long v8, v8

    add-long/2addr v6, v8

    .line 12047
    aput-wide p1, v2, v1

    .line 12048
    aput-wide v6, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 12050
    :cond_0
    new-instance p0, Lcom/google/android/exoplayer2/extractor/e/c;

    invoke-direct {p0, v2, v0, v4, v5}, Lcom/google/android/exoplayer2/extractor/e/c;-><init>([J[JJ)V

    return-object p0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method private static synthetic a(IIIII)Z
    .locals 3

    const/4 v0, 0x2

    const/16 v1, 0x4d

    const/16 v2, 0x43

    if-ne p1, v2, :cond_0

    const/16 v2, 0x4f

    if-ne p2, v2, :cond_0

    if-ne p3, v1, :cond_0

    if-eq p4, v1, :cond_1

    if-eq p0, v0, :cond_1

    :cond_0
    if-ne p1, v1, :cond_2

    const/16 p1, 0x4c

    if-ne p2, p1, :cond_2

    if-ne p3, p1, :cond_2

    const/16 p1, 0x54

    if-eq p4, p1, :cond_1

    if-ne p0, v0, :cond_2

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method private static a(IJ)Z
    .locals 4

    const v0, -0x1f400

    and-int/2addr p0, v0

    int-to-long v0, p0

    const-wide/32 v2, -0x1f400

    and-long p0, p1, v2

    cmp-long p2, v0, p0

    if-nez p2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private a(Lcom/google/android/exoplayer2/extractor/i;Z)Z
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p2, :cond_0

    const v0, 0x8000

    goto :goto_0

    :cond_0
    const/high16 v0, 0x20000

    .line 337
    :goto_0
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/i;->a()V

    .line 338
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/i;->c()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x1

    const/4 v7, 0x0

    cmp-long v8, v1, v3

    if-nez v8, :cond_5

    .line 341
    iget v1, p0, Lcom/google/android/exoplayer2/extractor/e/d;->d:I

    and-int/2addr v1, v5

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_2

    const/4 v1, 0x0

    goto :goto_2

    .line 343
    :cond_2
    sget-object v1, Lcom/google/android/exoplayer2/extractor/e/d;->c:Lcom/google/android/exoplayer2/metadata/id3/a$a;

    .line 344
    :goto_2
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/e/d;->i:Lcom/google/android/exoplayer2/extractor/s;

    invoke-virtual {v2, p1, v1}, Lcom/google/android/exoplayer2/extractor/s;->a(Lcom/google/android/exoplayer2/extractor/i;Lcom/google/android/exoplayer2/metadata/id3/a$a;)Lcom/google/android/exoplayer2/metadata/Metadata;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/exoplayer2/extractor/e/d;->o:Lcom/google/android/exoplayer2/metadata/Metadata;

    if-eqz v1, :cond_3

    .line 346
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/e/d;->h:Lcom/google/android/exoplayer2/extractor/r;

    invoke-virtual {v2, v1}, Lcom/google/android/exoplayer2/extractor/r;->a(Lcom/google/android/exoplayer2/metadata/Metadata;)Z

    .line 348
    :cond_3
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/i;->b()J

    move-result-wide v1

    long-to-int v2, v1

    if-nez p2, :cond_4

    .line 350
    invoke-interface {p1, v2}, Lcom/google/android/exoplayer2/extractor/i;->b(I)V

    :cond_4
    const/4 v1, 0x0

    goto :goto_3

    :cond_5
    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_3
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 354
    :goto_4
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/e/d;->c(Lcom/google/android/exoplayer2/extractor/i;)Z

    move-result v8

    if-eqz v8, :cond_7

    if-lez v3, :cond_6

    goto :goto_7

    .line 359
    :cond_6
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    .line 361
    :cond_7
    iget-object v8, p0, Lcom/google/android/exoplayer2/extractor/e/d;->f:Lcom/google/android/exoplayer2/util/u;

    invoke-virtual {v8, v7}, Lcom/google/android/exoplayer2/util/u;->d(I)V

    .line 362
    iget-object v8, p0, Lcom/google/android/exoplayer2/extractor/e/d;->f:Lcom/google/android/exoplayer2/util/u;

    invoke-virtual {v8}, Lcom/google/android/exoplayer2/util/u;->j()I

    move-result v8

    if-eqz v1, :cond_8

    int-to-long v9, v1

    .line 365
    invoke-static {v8, v9, v10}, Lcom/google/android/exoplayer2/extractor/e/d;->a(IJ)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 366
    :cond_8
    invoke-static {v8}, Lcom/google/android/exoplayer2/audio/o;->a(I)I

    move-result v9

    const/4 v10, -0x1

    if-ne v9, v10, :cond_d

    :cond_9
    add-int/lit8 v1, v4, 0x1

    if-ne v4, v0, :cond_b

    if-eqz p2, :cond_a

    return v7

    .line 370
    :cond_a
    new-instance p1, Lcom/google/android/exoplayer2/ParserException;

    const-string p2, "Searched too many bytes."

    invoke-direct {p1, p2}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_b
    if-eqz p2, :cond_c

    .line 377
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/i;->a()V

    add-int v3, v2, v1

    .line 378
    invoke-interface {p1, v3}, Lcom/google/android/exoplayer2/extractor/i;->c(I)V

    goto :goto_5

    .line 380
    :cond_c
    invoke-interface {p1, v6}, Lcom/google/android/exoplayer2/extractor/i;->b(I)V

    :goto_5
    move v4, v1

    const/4 v1, 0x0

    const/4 v3, 0x0

    goto :goto_4

    :cond_d
    add-int/lit8 v3, v3, 0x1

    if-ne v3, v6, :cond_e

    .line 386
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/e/d;->g:Lcom/google/android/exoplayer2/audio/o$a;

    invoke-virtual {v1, v8}, Lcom/google/android/exoplayer2/audio/o$a;->a(I)Z

    move v1, v8

    goto :goto_6

    :cond_e
    if-eq v3, v5, :cond_f

    :goto_6
    add-int/lit8 v9, v9, -0x4

    .line 391
    invoke-interface {p1, v9}, Lcom/google/android/exoplayer2/extractor/i;->c(I)V

    goto :goto_4

    :cond_f
    :goto_7
    if-eqz p2, :cond_10

    add-int/2addr v2, v4

    .line 396
    invoke-interface {p1, v2}, Lcom/google/android/exoplayer2/extractor/i;->b(I)V

    goto :goto_8

    .line 398
    :cond_10
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/i;->a()V

    .line 400
    :goto_8
    iput v1, p0, Lcom/google/android/exoplayer2/extractor/e/d;->n:I

    return v6
.end method

.method private static synthetic a()[Lcom/google/android/exoplayer2/extractor/h;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/android/exoplayer2/extractor/h;

    .line 57
    new-instance v1, Lcom/google/android/exoplayer2/extractor/e/d;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/extractor/e/d;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method

.method private b(Lcom/google/android/exoplayer2/extractor/i;)I
    .locals 28
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "extractorOutput",
            "realTrackOutput"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 243
    iget v2, v0, Lcom/google/android/exoplayer2/extractor/e/d;->n:I

    const/4 v3, -0x1

    const/4 v4, 0x0

    if-nez v2, :cond_0

    .line 245
    :try_start_0
    invoke-direct {v0, v1, v4}, Lcom/google/android/exoplayer2/extractor/e/d;->a(Lcom/google/android/exoplayer2/extractor/i;Z)Z
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    return v3

    .line 250
    :cond_0
    :goto_0
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/e/d;->t:Lcom/google/android/exoplayer2/extractor/e/e;

    const/4 v7, 0x1

    if-nez v2, :cond_1b

    .line 2476
    new-instance v13, Lcom/google/android/exoplayer2/util/u;

    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/e/d;->g:Lcom/google/android/exoplayer2/audio/o$a;

    iget v2, v2, Lcom/google/android/exoplayer2/audio/o$a;->c:I

    invoke-direct {v13, v2}, Lcom/google/android/exoplayer2/util/u;-><init>(I)V

    .line 3169
    iget-object v2, v13, Lcom/google/android/exoplayer2/util/u;->a:[B

    .line 2477
    iget-object v8, v0, Lcom/google/android/exoplayer2/extractor/e/d;->g:Lcom/google/android/exoplayer2/audio/o$a;

    iget v8, v8, Lcom/google/android/exoplayer2/audio/o$a;->c:I

    invoke-interface {v1, v2, v4, v8}, Lcom/google/android/exoplayer2/extractor/i;->d([BII)V

    .line 2478
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/e/d;->g:Lcom/google/android/exoplayer2/audio/o$a;

    iget v2, v2, Lcom/google/android/exoplayer2/audio/o$a;->a:I

    and-int/2addr v2, v7

    const/16 v8, 0x24

    const/16 v9, 0x15

    if-eqz v2, :cond_1

    .line 2479
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/e/d;->g:Lcom/google/android/exoplayer2/audio/o$a;

    iget v2, v2, Lcom/google/android/exoplayer2/audio/o$a;->e:I

    if-eq v2, v7, :cond_3

    const/16 v9, 0x24

    goto :goto_1

    .line 2480
    :cond_1
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/e/d;->g:Lcom/google/android/exoplayer2/audio/o$a;

    iget v2, v2, Lcom/google/android/exoplayer2/audio/o$a;->e:I

    if-eq v2, v7, :cond_2

    goto :goto_1

    :cond_2
    const/16 v9, 0xd

    .line 4127
    :cond_3
    :goto_1
    iget v2, v13, Lcom/google/android/exoplayer2/util/u;->c:I

    add-int/lit8 v10, v9, 0x4

    const v11, 0x58696e67

    const v12, 0x496e666f

    const v14, 0x56425249

    if-lt v2, v10, :cond_4

    .line 3537
    invoke-virtual {v13, v9}, Lcom/google/android/exoplayer2/util/u;->d(I)V

    .line 3538
    invoke-virtual {v13}, Lcom/google/android/exoplayer2/util/u;->j()I

    move-result v2

    if-eq v2, v11, :cond_6

    if-ne v2, v12, :cond_4

    goto :goto_2

    .line 5127
    :cond_4
    iget v2, v13, Lcom/google/android/exoplayer2/util/u;->c:I

    const/16 v10, 0x28

    if-lt v2, v10, :cond_5

    .line 3544
    invoke-virtual {v13, v8}, Lcom/google/android/exoplayer2/util/u;->d(I)V

    .line 3545
    invoke-virtual {v13}, Lcom/google/android/exoplayer2/util/u;->j()I

    move-result v2

    if-ne v2, v14, :cond_5

    const v2, 0x56425249

    goto :goto_2

    :cond_5
    const/4 v2, 0x0

    :cond_6
    :goto_2
    const-wide/16 v15, -0x1

    const/16 v17, 0x0

    if-eq v2, v11, :cond_9

    if-ne v2, v12, :cond_7

    goto :goto_3

    :cond_7
    if-ne v2, v14, :cond_8

    .line 2499
    invoke-interface/range {p1 .. p1}, Lcom/google/android/exoplayer2/extractor/i;->d()J

    move-result-wide v8

    invoke-interface/range {p1 .. p1}, Lcom/google/android/exoplayer2/extractor/i;->c()J

    move-result-wide v10

    iget-object v12, v0, Lcom/google/android/exoplayer2/extractor/e/d;->g:Lcom/google/android/exoplayer2/audio/o$a;

    invoke-static/range {v8 .. v13}, Lcom/google/android/exoplayer2/extractor/e/f;->a(JJLcom/google/android/exoplayer2/audio/o$a;Lcom/google/android/exoplayer2/util/u;)Lcom/google/android/exoplayer2/extractor/e/f;

    move-result-object v2

    .line 2500
    iget-object v8, v0, Lcom/google/android/exoplayer2/extractor/e/d;->g:Lcom/google/android/exoplayer2/audio/o$a;

    iget v8, v8, Lcom/google/android/exoplayer2/audio/o$a;->c:I

    invoke-interface {v1, v8}, Lcom/google/android/exoplayer2/extractor/i;->b(I)V

    goto/16 :goto_7

    .line 2504
    :cond_8
    invoke-interface/range {p1 .. p1}, Lcom/google/android/exoplayer2/extractor/i;->a()V

    move-object/from16 v2, v17

    goto/16 :goto_7

    .line 2484
    :cond_9
    :goto_3
    invoke-interface/range {p1 .. p1}, Lcom/google/android/exoplayer2/extractor/i;->d()J

    move-result-wide v10

    invoke-interface/range {p1 .. p1}, Lcom/google/android/exoplayer2/extractor/i;->c()J

    move-result-wide v19

    iget-object v8, v0, Lcom/google/android/exoplayer2/extractor/e/d;->g:Lcom/google/android/exoplayer2/audio/o$a;

    .line 6051
    iget v14, v8, Lcom/google/android/exoplayer2/audio/o$a;->g:I

    .line 6052
    iget v3, v8, Lcom/google/android/exoplayer2/audio/o$a;->d:I

    .line 6054
    invoke-virtual {v13}, Lcom/google/android/exoplayer2/util/u;->j()I

    move-result v18

    and-int/lit8 v5, v18, 0x1

    if-ne v5, v7, :cond_e

    .line 6056
    invoke-virtual {v13}, Lcom/google/android/exoplayer2/util/u;->o()I

    move-result v5

    if-nez v5, :cond_a

    goto/16 :goto_5

    :cond_a
    int-to-long v5, v5

    move-object/from16 v27, v13

    int-to-long v12, v14

    const-wide/32 v21, 0xf4240

    mul-long v23, v12, v21

    int-to-long v12, v3

    move-wide/from16 v21, v5

    move-wide/from16 v25, v12

    .line 6060
    invoke-static/range {v21 .. v26}, Lcom/google/android/exoplayer2/util/af;->b(JJJ)J

    move-result-wide v22

    const/4 v3, 0x6

    and-int/lit8 v5, v18, 0x6

    if-eq v5, v3, :cond_b

    .line 6064
    new-instance v3, Lcom/google/android/exoplayer2/extractor/e/g;

    iget v5, v8, Lcom/google/android/exoplayer2/audio/o$a;->c:I

    move-object/from16 v18, v3

    move/from16 v21, v5

    invoke-direct/range {v18 .. v23}, Lcom/google/android/exoplayer2/extractor/e/g;-><init>(JIJ)V

    goto :goto_6

    .line 6067
    :cond_b
    invoke-virtual/range {v27 .. v27}, Lcom/google/android/exoplayer2/util/u;->h()J

    move-result-wide v24

    const/16 v3, 0x64

    new-array v5, v3, [J

    const/4 v6, 0x0

    :goto_4
    if-ge v6, v3, :cond_c

    .line 6070
    invoke-virtual/range {v27 .. v27}, Lcom/google/android/exoplayer2/util/u;->c()I

    move-result v12

    int-to-long v12, v12

    aput-wide v12, v5, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_c
    cmp-long v3, v10, v15

    if-eqz v3, :cond_d

    add-long v12, v19, v24

    cmp-long v3, v10, v12

    if-eqz v3, :cond_d

    .line 6078
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "XING data size mismatch: "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, ", "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v6, "XingSeeker"

    invoke-static {v6, v3}, Lcom/google/android/exoplayer2/util/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 6080
    :cond_d
    new-instance v3, Lcom/google/android/exoplayer2/extractor/e/g;

    iget v6, v8, Lcom/google/android/exoplayer2/audio/o$a;->c:I

    move-object/from16 v18, v3

    move/from16 v21, v6

    move-object/from16 v26, v5

    invoke-direct/range {v18 .. v26}, Lcom/google/android/exoplayer2/extractor/e/g;-><init>(JIJJ[J)V

    goto :goto_6

    :cond_e
    :goto_5
    move-object/from16 v3, v17

    :goto_6
    if-eqz v3, :cond_10

    .line 2485
    iget-object v5, v0, Lcom/google/android/exoplayer2/extractor/e/d;->h:Lcom/google/android/exoplayer2/extractor/r;

    invoke-virtual {v5}, Lcom/google/android/exoplayer2/extractor/r;->a()Z

    move-result v5

    if-nez v5, :cond_10

    .line 2487
    invoke-interface/range {p1 .. p1}, Lcom/google/android/exoplayer2/extractor/i;->a()V

    add-int/lit16 v9, v9, 0x8d

    .line 2488
    invoke-interface {v1, v9}, Lcom/google/android/exoplayer2/extractor/i;->c(I)V

    .line 2489
    iget-object v5, v0, Lcom/google/android/exoplayer2/extractor/e/d;->f:Lcom/google/android/exoplayer2/util/u;

    .line 6169
    iget-object v5, v5, Lcom/google/android/exoplayer2/util/u;->a:[B

    const/4 v6, 0x3

    .line 2489
    invoke-interface {v1, v5, v4, v6}, Lcom/google/android/exoplayer2/extractor/i;->d([BII)V

    .line 2490
    iget-object v5, v0, Lcom/google/android/exoplayer2/extractor/e/d;->f:Lcom/google/android/exoplayer2/util/u;

    invoke-virtual {v5, v4}, Lcom/google/android/exoplayer2/util/u;->d(I)V

    .line 2491
    iget-object v5, v0, Lcom/google/android/exoplayer2/extractor/e/d;->h:Lcom/google/android/exoplayer2/extractor/r;

    iget-object v6, v0, Lcom/google/android/exoplayer2/extractor/e/d;->f:Lcom/google/android/exoplayer2/util/u;

    invoke-virtual {v6}, Lcom/google/android/exoplayer2/util/u;->g()I

    move-result v6

    shr-int/lit8 v8, v6, 0xc

    and-int/lit16 v6, v6, 0xfff

    if-gtz v8, :cond_f

    if-lez v6, :cond_10

    .line 7067
    :cond_f
    iput v8, v5, Lcom/google/android/exoplayer2/extractor/r;->a:I

    .line 7068
    iput v6, v5, Lcom/google/android/exoplayer2/extractor/r;->b:I

    .line 2493
    :cond_10
    iget-object v5, v0, Lcom/google/android/exoplayer2/extractor/e/d;->g:Lcom/google/android/exoplayer2/audio/o$a;

    iget v5, v5, Lcom/google/android/exoplayer2/audio/o$a;->c:I

    invoke-interface {v1, v5}, Lcom/google/android/exoplayer2/extractor/i;->b(I)V

    if-eqz v3, :cond_11

    .line 2494
    invoke-interface {v3}, Lcom/google/android/exoplayer2/extractor/e/e;->a()Z

    move-result v5

    if-nez v5, :cond_11

    const v5, 0x496e666f

    if-ne v2, v5, :cond_11

    .line 2496
    invoke-direct/range {p0 .. p1}, Lcom/google/android/exoplayer2/extractor/e/d;->d(Lcom/google/android/exoplayer2/extractor/i;)Lcom/google/android/exoplayer2/extractor/e/e;

    move-result-object v2

    goto :goto_7

    :cond_11
    move-object v2, v3

    .line 2428
    :goto_7
    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/e/d;->o:Lcom/google/android/exoplayer2/metadata/Metadata;

    invoke-interface/range {p1 .. p1}, Lcom/google/android/exoplayer2/extractor/i;->c()J

    move-result-wide v5

    invoke-static {v3, v5, v6}, Lcom/google/android/exoplayer2/extractor/e/d;->a(Lcom/google/android/exoplayer2/metadata/Metadata;J)Lcom/google/android/exoplayer2/extractor/e/c;

    move-result-object v3

    .line 2430
    iget-boolean v5, v0, Lcom/google/android/exoplayer2/extractor/e/d;->b:Z

    if-eqz v5, :cond_12

    .line 2431
    new-instance v2, Lcom/google/android/exoplayer2/extractor/e/e$a;

    invoke-direct {v2}, Lcom/google/android/exoplayer2/extractor/e/e$a;-><init>()V

    goto :goto_b

    .line 2435
    :cond_12
    iget v5, v0, Lcom/google/android/exoplayer2/extractor/e/d;->d:I

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_15

    if-eqz v3, :cond_13

    .line 2439
    invoke-interface {v3}, Lcom/google/android/exoplayer2/extractor/e/e;->b()J

    move-result-wide v5

    .line 2440
    invoke-interface {v3}, Lcom/google/android/exoplayer2/extractor/e/e;->c()J

    move-result-wide v15

    :goto_8
    move-wide v9, v5

    move-wide v13, v15

    goto :goto_9

    :cond_13
    if-eqz v2, :cond_14

    .line 2442
    invoke-interface {v2}, Lcom/google/android/exoplayer2/extractor/e/e;->b()J

    move-result-wide v5

    .line 2443
    invoke-interface {v2}, Lcom/google/android/exoplayer2/extractor/e/e;->c()J

    move-result-wide v15

    goto :goto_8

    .line 2445
    :cond_14
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/e/d;->o:Lcom/google/android/exoplayer2/metadata/Metadata;

    invoke-static {v2}, Lcom/google/android/exoplayer2/extractor/e/d;->a(Lcom/google/android/exoplayer2/metadata/Metadata;)J

    move-result-wide v5

    goto :goto_8

    .line 2447
    :goto_9
    new-instance v2, Lcom/google/android/exoplayer2/extractor/e/b;

    .line 2449
    invoke-interface/range {p1 .. p1}, Lcom/google/android/exoplayer2/extractor/i;->c()J

    move-result-wide v11

    move-object v8, v2

    invoke-direct/range {v8 .. v14}, Lcom/google/android/exoplayer2/extractor/e/b;-><init>(JJJ)V

    goto :goto_a

    :cond_15
    if-eqz v3, :cond_16

    move-object v2, v3

    goto :goto_a

    :cond_16
    if-eqz v2, :cond_17

    goto :goto_a

    :cond_17
    move-object/from16 v2, v17

    :goto_a
    if-eqz v2, :cond_18

    .line 2457
    invoke-interface {v2}, Lcom/google/android/exoplayer2/extractor/e/e;->a()Z

    move-result v3

    if-nez v3, :cond_19

    iget v3, v0, Lcom/google/android/exoplayer2/extractor/e/d;->d:I

    and-int/2addr v3, v7

    if-eqz v3, :cond_19

    .line 2458
    :cond_18
    invoke-direct/range {p0 .. p1}, Lcom/google/android/exoplayer2/extractor/e/d;->d(Lcom/google/android/exoplayer2/extractor/i;)Lcom/google/android/exoplayer2/extractor/e/e;

    move-result-object v2

    .line 251
    :cond_19
    :goto_b
    iput-object v2, v0, Lcom/google/android/exoplayer2/extractor/e/d;->t:Lcom/google/android/exoplayer2/extractor/e/e;

    .line 252
    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/e/d;->k:Lcom/google/android/exoplayer2/extractor/j;

    invoke-interface {v3, v2}, Lcom/google/android/exoplayer2/extractor/j;->a(Lcom/google/android/exoplayer2/extractor/v;)V

    .line 253
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/e/d;->m:Lcom/google/android/exoplayer2/extractor/x;

    new-instance v3, Lcom/google/android/exoplayer2/Format$a;

    invoke-direct {v3}, Lcom/google/android/exoplayer2/Format$a;-><init>()V

    iget-object v5, v0, Lcom/google/android/exoplayer2/extractor/e/d;->g:Lcom/google/android/exoplayer2/audio/o$a;

    iget-object v5, v5, Lcom/google/android/exoplayer2/audio/o$a;->b:Ljava/lang/String;

    .line 7370
    iput-object v5, v3, Lcom/google/android/exoplayer2/Format$a;->k:Ljava/lang/String;

    const/16 v5, 0x1000

    .line 7381
    iput v5, v3, Lcom/google/android/exoplayer2/Format$a;->l:I

    .line 256
    iget-object v5, v0, Lcom/google/android/exoplayer2/extractor/e/d;->g:Lcom/google/android/exoplayer2/audio/o$a;

    iget v5, v5, Lcom/google/android/exoplayer2/audio/o$a;->e:I

    .line 7517
    iput v5, v3, Lcom/google/android/exoplayer2/Format$a;->x:I

    .line 257
    iget-object v5, v0, Lcom/google/android/exoplayer2/extractor/e/d;->g:Lcom/google/android/exoplayer2/audio/o$a;

    iget v5, v5, Lcom/google/android/exoplayer2/audio/o$a;->d:I

    .line 7528
    iput v5, v3, Lcom/google/android/exoplayer2/Format$a;->y:I

    .line 258
    iget-object v5, v0, Lcom/google/android/exoplayer2/extractor/e/d;->h:Lcom/google/android/exoplayer2/extractor/r;

    iget v5, v5, Lcom/google/android/exoplayer2/extractor/r;->a:I

    .line 7550
    iput v5, v3, Lcom/google/android/exoplayer2/Format$a;->A:I

    .line 259
    iget-object v5, v0, Lcom/google/android/exoplayer2/extractor/e/d;->h:Lcom/google/android/exoplayer2/extractor/r;

    iget v5, v5, Lcom/google/android/exoplayer2/extractor/r;->b:I

    .line 7561
    iput v5, v3, Lcom/google/android/exoplayer2/Format$a;->B:I

    .line 261
    iget v5, v0, Lcom/google/android/exoplayer2/extractor/e/d;->d:I

    and-int/lit8 v5, v5, 0x4

    if-eqz v5, :cond_1a

    move-object/from16 v5, v17

    goto :goto_c

    :cond_1a
    iget-object v5, v0, Lcom/google/android/exoplayer2/extractor/e/d;->o:Lcom/google/android/exoplayer2/metadata/Metadata;

    .line 8344
    :goto_c
    iput-object v5, v3, Lcom/google/android/exoplayer2/Format$a;->i:Lcom/google/android/exoplayer2/metadata/Metadata;

    .line 262
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/Format$a;->a()Lcom/google/android/exoplayer2/Format;

    move-result-object v3

    .line 253
    invoke-interface {v2, v3}, Lcom/google/android/exoplayer2/extractor/x;->a(Lcom/google/android/exoplayer2/Format;)V

    .line 263
    invoke-interface/range {p1 .. p1}, Lcom/google/android/exoplayer2/extractor/i;->c()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/google/android/exoplayer2/extractor/e/d;->r:J

    goto :goto_d

    .line 264
    :cond_1b
    iget-wide v2, v0, Lcom/google/android/exoplayer2/extractor/e/d;->r:J

    const-wide/16 v5, 0x0

    cmp-long v8, v2, v5

    if-eqz v8, :cond_1c

    .line 265
    invoke-interface/range {p1 .. p1}, Lcom/google/android/exoplayer2/extractor/i;->c()J

    move-result-wide v2

    .line 266
    iget-wide v5, v0, Lcom/google/android/exoplayer2/extractor/e/d;->r:J

    cmp-long v8, v2, v5

    if-gez v8, :cond_1c

    sub-long/2addr v5, v2

    long-to-int v2, v5

    .line 268
    invoke-interface {v1, v2}, Lcom/google/android/exoplayer2/extractor/i;->b(I)V

    .line 9276
    :cond_1c
    :goto_d
    iget v2, v0, Lcom/google/android/exoplayer2/extractor/e/d;->s:I

    if-nez v2, :cond_22

    .line 9277
    invoke-interface/range {p1 .. p1}, Lcom/google/android/exoplayer2/extractor/i;->a()V

    .line 9278
    invoke-direct/range {p0 .. p1}, Lcom/google/android/exoplayer2/extractor/e/d;->c(Lcom/google/android/exoplayer2/extractor/i;)Z

    move-result v2

    if-eqz v2, :cond_1d

    const/4 v2, -0x1

    return v2

    :cond_1d
    const/4 v2, -0x1

    .line 9281
    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/e/d;->f:Lcom/google/android/exoplayer2/util/u;

    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer2/util/u;->d(I)V

    .line 9282
    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/e/d;->f:Lcom/google/android/exoplayer2/util/u;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/util/u;->j()I

    move-result v3

    .line 9283
    iget v5, v0, Lcom/google/android/exoplayer2/extractor/e/d;->n:I

    int-to-long v5, v5

    invoke-static {v3, v5, v6}, Lcom/google/android/exoplayer2/extractor/e/d;->a(IJ)Z

    move-result v5

    if-eqz v5, :cond_21

    .line 9284
    invoke-static {v3}, Lcom/google/android/exoplayer2/audio/o;->a(I)I

    move-result v5

    if-ne v5, v2, :cond_1e

    goto/16 :goto_e

    .line 9290
    :cond_1e
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/e/d;->g:Lcom/google/android/exoplayer2/audio/o$a;

    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/audio/o$a;->a(I)Z

    .line 9291
    iget-wide v2, v0, Lcom/google/android/exoplayer2/extractor/e/d;->p:J

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v8, v2, v5

    if-nez v8, :cond_1f

    .line 9292
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/e/d;->t:Lcom/google/android/exoplayer2/extractor/e/e;

    invoke-interface/range {p1 .. p1}, Lcom/google/android/exoplayer2/extractor/i;->c()J

    move-result-wide v8

    invoke-interface {v2, v8, v9}, Lcom/google/android/exoplayer2/extractor/e/e;->c(J)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/google/android/exoplayer2/extractor/e/d;->p:J

    .line 9293
    iget-wide v2, v0, Lcom/google/android/exoplayer2/extractor/e/d;->e:J

    cmp-long v8, v2, v5

    if-eqz v8, :cond_1f

    .line 9294
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/e/d;->t:Lcom/google/android/exoplayer2/extractor/e/e;

    const-wide/16 v5, 0x0

    invoke-interface {v2, v5, v6}, Lcom/google/android/exoplayer2/extractor/e/e;->c(J)J

    move-result-wide v2

    .line 9295
    iget-wide v5, v0, Lcom/google/android/exoplayer2/extractor/e/d;->p:J

    iget-wide v8, v0, Lcom/google/android/exoplayer2/extractor/e/d;->e:J

    sub-long/2addr v8, v2

    add-long/2addr v5, v8

    iput-wide v5, v0, Lcom/google/android/exoplayer2/extractor/e/d;->p:J

    .line 9298
    :cond_1f
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/e/d;->g:Lcom/google/android/exoplayer2/audio/o$a;

    iget v2, v2, Lcom/google/android/exoplayer2/audio/o$a;->c:I

    iput v2, v0, Lcom/google/android/exoplayer2/extractor/e/d;->s:I

    .line 9299
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/e/d;->t:Lcom/google/android/exoplayer2/extractor/e/e;

    instance-of v3, v2, Lcom/google/android/exoplayer2/extractor/e/b;

    if-eqz v3, :cond_22

    .line 9300
    check-cast v2, Lcom/google/android/exoplayer2/extractor/e/b;

    .line 9303
    iget-wide v5, v0, Lcom/google/android/exoplayer2/extractor/e/d;->q:J

    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/e/d;->g:Lcom/google/android/exoplayer2/audio/o$a;

    iget v3, v3, Lcom/google/android/exoplayer2/audio/o$a;->g:I

    int-to-long v8, v3

    add-long/2addr v5, v8

    .line 9304
    invoke-direct {v0, v5, v6}, Lcom/google/android/exoplayer2/extractor/e/d;->a(J)J

    move-result-wide v5

    .line 9305
    invoke-interface/range {p1 .. p1}, Lcom/google/android/exoplayer2/extractor/i;->c()J

    move-result-wide v8

    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/e/d;->g:Lcom/google/android/exoplayer2/audio/o$a;

    iget v3, v3, Lcom/google/android/exoplayer2/audio/o$a;->c:I

    int-to-long v10, v3

    add-long/2addr v8, v10

    .line 10091
    invoke-virtual {v2, v5, v6}, Lcom/google/android/exoplayer2/extractor/e/b;->b(J)Z

    move-result v3

    if-nez v3, :cond_20

    .line 10094
    iget-object v3, v2, Lcom/google/android/exoplayer2/extractor/e/b;->a:Lcom/google/android/exoplayer2/util/o;

    invoke-virtual {v3, v5, v6}, Lcom/google/android/exoplayer2/util/o;->a(J)V

    .line 10095
    iget-object v3, v2, Lcom/google/android/exoplayer2/extractor/e/b;->b:Lcom/google/android/exoplayer2/util/o;

    invoke-virtual {v3, v8, v9}, Lcom/google/android/exoplayer2/util/o;->a(J)V

    .line 9306
    :cond_20
    iget-boolean v3, v0, Lcom/google/android/exoplayer2/extractor/e/d;->u:Z

    if-eqz v3, :cond_22

    iget-wide v5, v0, Lcom/google/android/exoplayer2/extractor/e/d;->v:J

    invoke-virtual {v2, v5, v6}, Lcom/google/android/exoplayer2/extractor/e/b;->b(J)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 9307
    iput-boolean v4, v0, Lcom/google/android/exoplayer2/extractor/e/d;->u:Z

    .line 9308
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/e/d;->l:Lcom/google/android/exoplayer2/extractor/x;

    iput-object v2, v0, Lcom/google/android/exoplayer2/extractor/e/d;->m:Lcom/google/android/exoplayer2/extractor/x;

    goto :goto_f

    .line 9286
    :cond_21
    :goto_e
    invoke-interface {v1, v7}, Lcom/google/android/exoplayer2/extractor/i;->b(I)V

    .line 9287
    iput v4, v0, Lcom/google/android/exoplayer2/extractor/e/d;->n:I

    return v4

    .line 9312
    :cond_22
    :goto_f
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/e/d;->m:Lcom/google/android/exoplayer2/extractor/x;

    iget v3, v0, Lcom/google/android/exoplayer2/extractor/e/d;->s:I

    invoke-interface {v2, v1, v3, v7}, Lcom/google/android/exoplayer2/extractor/x;->b(Lcom/google/android/exoplayer2/upstream/e;IZ)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_23

    return v2

    .line 9316
    :cond_23
    iget v2, v0, Lcom/google/android/exoplayer2/extractor/e/d;->s:I

    sub-int/2addr v2, v1

    iput v2, v0, Lcom/google/android/exoplayer2/extractor/e/d;->s:I

    if-lez v2, :cond_24

    return v4

    .line 9320
    :cond_24
    iget-object v5, v0, Lcom/google/android/exoplayer2/extractor/e/d;->m:Lcom/google/android/exoplayer2/extractor/x;

    iget-wide v1, v0, Lcom/google/android/exoplayer2/extractor/e/d;->q:J

    .line 9321
    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer2/extractor/e/d;->a(J)J

    move-result-wide v6

    const/4 v8, 0x1

    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/e/d;->g:Lcom/google/android/exoplayer2/audio/o$a;

    iget v9, v1, Lcom/google/android/exoplayer2/audio/o$a;->c:I

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 9320
    invoke-interface/range {v5 .. v11}, Lcom/google/android/exoplayer2/extractor/x;->a(JIIILcom/google/android/exoplayer2/extractor/x$a;)V

    .line 9322
    iget-wide v1, v0, Lcom/google/android/exoplayer2/extractor/e/d;->q:J

    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/e/d;->g:Lcom/google/android/exoplayer2/audio/o$a;

    iget v3, v3, Lcom/google/android/exoplayer2/audio/o$a;->g:I

    int-to-long v5, v3

    add-long/2addr v1, v5

    iput-wide v1, v0, Lcom/google/android/exoplayer2/extractor/e/d;->q:J

    .line 9323
    iput v4, v0, Lcom/google/android/exoplayer2/extractor/e/d;->s:I

    return v4
.end method

.method private c(Lcom/google/android/exoplayer2/extractor/i;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 409
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/e/d;->t:Lcom/google/android/exoplayer2/extractor/e/e;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 410
    invoke-interface {v0}, Lcom/google/android/exoplayer2/extractor/e/e;->c()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    .line 412
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/i;->b()J

    move-result-wide v4

    const-wide/16 v6, 0x4

    sub-long/2addr v2, v6

    cmp-long v0, v4, v2

    if-lez v0, :cond_0

    return v1

    .line 417
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/e/d;->f:Lcom/google/android/exoplayer2/util/u;

    .line 10169
    iget-object v0, v0, Lcom/google/android/exoplayer2/util/u;->a:[B

    const/4 v2, 0x4

    const/4 v3, 0x0

    .line 417
    invoke-interface {p1, v0, v3, v2, v1}, Lcom/google/android/exoplayer2/extractor/i;->b([BIIZ)Z

    move-result p1
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p1, :cond_1

    return v1

    :cond_1
    return v3

    :catch_0
    return v1
.end method

.method private d(Lcom/google/android/exoplayer2/extractor/i;)Lcom/google/android/exoplayer2/extractor/e/e;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 511
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/e/d;->f:Lcom/google/android/exoplayer2/util/u;

    .line 11169
    iget-object v0, v0, Lcom/google/android/exoplayer2/util/u;->a:[B

    const/4 v1, 0x0

    const/4 v2, 0x4

    .line 511
    invoke-interface {p1, v0, v1, v2}, Lcom/google/android/exoplayer2/extractor/i;->d([BII)V

    .line 512
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/e/d;->f:Lcom/google/android/exoplayer2/util/u;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/u;->d(I)V

    .line 513
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/e/d;->g:Lcom/google/android/exoplayer2/audio/o$a;

    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/e/d;->f:Lcom/google/android/exoplayer2/util/u;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/u;->j()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/audio/o$a;->a(I)Z

    .line 514
    new-instance v0, Lcom/google/android/exoplayer2/extractor/e/a;

    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/i;->d()J

    move-result-wide v3

    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/i;->c()J

    move-result-wide v5

    iget-object v7, p0, Lcom/google/android/exoplayer2/extractor/e/d;->g:Lcom/google/android/exoplayer2/audio/o$a;

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/google/android/exoplayer2/extractor/e/a;-><init>(JJLcom/google/android/exoplayer2/audio/o$a;)V

    return-object v0
.end method

.method public static synthetic lambda$APLDWOkc9tfIH2WjBq4j4dsr_Xw(IIIII)Z
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/extractor/e/d;->a(IIIII)Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$XJdJ6ZpohJv4AAuLJquM-M3_-Ck()[Lcom/google/android/exoplayer2/extractor/h;
    .locals 1

    invoke-static {}, Lcom/google/android/exoplayer2/extractor/e/d;->a()[Lcom/google/android/exoplayer2/extractor/h;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/google/android/exoplayer2/extractor/i;Lcom/google/android/exoplayer2/extractor/u;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1519
    iget-object p2, p0, Lcom/google/android/exoplayer2/extractor/e/d;->l:Lcom/google/android/exoplayer2/extractor/x;

    invoke-static {p2}, Lcom/google/android/exoplayer2/util/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1520
    iget-object p2, p0, Lcom/google/android/exoplayer2/extractor/e/d;->k:Lcom/google/android/exoplayer2/extractor/j;

    invoke-static {p2}, Lcom/google/android/exoplayer2/util/af;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/e/d;->b(Lcom/google/android/exoplayer2/extractor/i;)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_0

    .line 219
    iget-object p2, p0, Lcom/google/android/exoplayer2/extractor/e/d;->t:Lcom/google/android/exoplayer2/extractor/e/e;

    instance-of p2, p2, Lcom/google/android/exoplayer2/extractor/e/b;

    if-eqz p2, :cond_0

    .line 221
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/e/d;->q:J

    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/extractor/e/d;->a(J)J

    move-result-wide v0

    .line 222
    iget-object p2, p0, Lcom/google/android/exoplayer2/extractor/e/d;->t:Lcom/google/android/exoplayer2/extractor/e/e;

    invoke-interface {p2}, Lcom/google/android/exoplayer2/extractor/e/e;->b()J

    move-result-wide v2

    cmp-long p2, v2, v0

    if-eqz p2, :cond_0

    .line 223
    iget-object p2, p0, Lcom/google/android/exoplayer2/extractor/e/d;->t:Lcom/google/android/exoplayer2/extractor/e/e;

    check-cast p2, Lcom/google/android/exoplayer2/extractor/e/b;

    .line 2110
    iput-wide v0, p2, Lcom/google/android/exoplayer2/extractor/e/b;->c:J

    .line 224
    iget-object p2, p0, Lcom/google/android/exoplayer2/extractor/e/d;->k:Lcom/google/android/exoplayer2/extractor/j;

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/e/d;->t:Lcom/google/android/exoplayer2/extractor/e/e;

    invoke-interface {p2, v0}, Lcom/google/android/exoplayer2/extractor/j;->a(Lcom/google/android/exoplayer2/extractor/v;)V

    :cond_0
    return p1
.end method

.method public final a(JJ)V
    .locals 2

    const/4 p1, 0x0

    .line 199
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/e/d;->n:I

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 200
    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/e/d;->p:J

    const-wide/16 v0, 0x0

    .line 201
    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/e/d;->q:J

    .line 202
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/e/d;->s:I

    .line 203
    iput-wide p3, p0, Lcom/google/android/exoplayer2/extractor/e/d;->v:J

    .line 204
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/e/d;->t:Lcom/google/android/exoplayer2/extractor/e/e;

    instance-of p2, p1, Lcom/google/android/exoplayer2/extractor/e/b;

    if-eqz p2, :cond_0

    check-cast p1, Lcom/google/android/exoplayer2/extractor/e/b;

    invoke-virtual {p1, p3, p4}, Lcom/google/android/exoplayer2/extractor/e/b;->b(J)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 205
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/extractor/e/d;->u:Z

    .line 206
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/e/d;->j:Lcom/google/android/exoplayer2/extractor/x;

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/e/d;->m:Lcom/google/android/exoplayer2/extractor/x;

    :cond_0
    return-void
.end method

.method public final a(Lcom/google/android/exoplayer2/extractor/j;)V
    .locals 2

    .line 191
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/e/d;->k:Lcom/google/android/exoplayer2/extractor/j;

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 192
    invoke-interface {p1, v0, v1}, Lcom/google/android/exoplayer2/extractor/j;->a(II)Lcom/google/android/exoplayer2/extractor/x;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/e/d;->l:Lcom/google/android/exoplayer2/extractor/x;

    .line 193
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/e/d;->m:Lcom/google/android/exoplayer2/extractor/x;

    .line 194
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/e/d;->k:Lcom/google/android/exoplayer2/extractor/j;

    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/j;->a()V

    return-void
.end method

.method public final a(Lcom/google/android/exoplayer2/extractor/i;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 186
    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/extractor/e/d;->a(Lcom/google/android/exoplayer2/extractor/i;Z)Z

    move-result p1

    return p1
.end method
